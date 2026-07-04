# Agentic Audit Brief: NFTfi

## Project Overview

- Project: NFTfi (`nftfi`)
- Website: [https://www.nftfi.com/](https://www.nftfi.com/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:36.458Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d094
- Chains: ethereum
- Contract surface: 40 unique implementations (69 raw deployments)
- DeFi Llama TVL: $9,651.19
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

NFT Lending. Structurally: 40 project-authored contract(s) across 1 chain(s); 11 ERC721 NFTs; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 7 common project-authored base contract(s) (erc998topdown, nftreceiver, erc165). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 74; live-surface contracts included: 69 (67 live, 2 unknown).
- Excluded by liveness: 5 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 7/38 (18.4%)
- Deployed-live implementations: 38 of 40 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 7/38
- Verified + Unaudited implementations: 31
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 40
- Raw deployments: 69
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 6 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 6 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Halborn | Tier 2 | 7 | 18.4% | 2023-02 |

## Contract Surface

### ✅ Verified + Audited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DirectLoanFixedCollectionOffer | unknown | ethereum | n/a | 2 deployments: ethereum [`0xd0c6e5...c4341f`](./contracts/ethereum-1/0xd0c6e59b50c32530c627107f50acc71958c4341f/); ethereum `0xe52cec...1f7934` | ✅ Audited |
| DirectLoanFixedOffer | unknown | ethereum | n/a | [`0xd0a40e...e22207`](./contracts/ethereum-1/0xd0a40eb7fd94ee97102ba8e9342243a2b2e22207/) | ✅ Audited |
| DirectLoanFixedOfferRedeploy | unknown | ethereum | n/a | [`0x8252df...152bc8`](./contracts/ethereum-1/0x8252df1d8b29057d1afe3062bf5a64d503152bc8/) | ✅ Audited |
| ImmutableBundle | unknown | ethereum | n/a | 3 deployments: ethereum [`0x46c9cf...7e7847`](./contracts/ethereum-1/0x46c9cfb32627b74f91e0b5ad575c247aec7e7847/); ethereum `0x9a1290...4a2fbe`; ethereum `0xb9f551...ebfef2` | ✅ Audited |
| NftfiBundler | token | ethereum | n/a | 4 deployments: ethereum [`0x025911...4925f3`](./contracts/ethereum-1/0x0259119359bf053ebf42c9807752de6bbb4925f3/); ethereum `0x16c583...290094`; ethereum `0x18faa7...614aeb`; ethereum `0xf8cb03...6c1401` | ✅ Audited |
| PunkWrapper | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0a6734...2e40c6`](./contracts/ethereum-1/0x0a6734a4bbac197190d79b3d3985fa04552e40c6/); ethereum `0xf4cb05...0d7a44` | ✅ Audited |
| SmartNft | unknown | ethereum | n/a | 6 deployments: ethereum [`0x208955...5f177c`](./contracts/ethereum-1/0x20895578f8ecff6ab34c9928544077ff595f177c/); ethereum `0x48ed99...16b934`; ethereum `0x5660e2...5e9b23`; ethereum `0x77b53b...ff7f4c`; ethereum `0xaabd3e...1a7708`; ethereum `0xe73ece...9fc481` | ✅ Audited |

### ⚠️ Verified + Unaudited (31)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AirdropFlashLoan | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3b0439...e1ec97`](./contracts/ethereum-1/0x3b043958181e0e5282e5415c953b146024e1ec97/); ethereum `0xdcb004...e96520` | ⚠️ Unaudited |
| AirdropReceiver | unknown | ethereum | n/a | [`0x3f4cc2...3e5a78`](./contracts/ethereum-1/0x3f4cc2848bc51ef6ebdba503847d007f823e5a78/) | ⚠️ Unaudited |
| AirdropReceiverFactory | unknown | ethereum | n/a | [`0xe5cec9...c7d41d`](./contracts/ethereum-1/0xe5cec9945d82e54c853baa99cb9076a48bc7d41d/) | ⚠️ Unaudited |
| AssetOfferLoan | unknown | ethereum | n/a | [`0x9f10d7...75c0a6`](./contracts/ethereum-1/0x9f10d706d789e4c76a1a6434cd1a9841c875c0a6/) | ⚠️ Unaudited |
| CollectionOfferLoan | unknown | ethereum | n/a | [`0xb6adec...bbad0d`](./contracts/ethereum-1/0xb6adec2acc851d30d5fb64f3137234bcdcbbad0d/) | ⚠️ Unaudited |
| ContractKeys | unknown | ethereum | n/a | 3 deployments: ethereum [`0x733ac6...0bd1e7`](./contracts/ethereum-1/0x733ac632056aa272130af63809ff3301c80bd1e7/); ethereum `0xc0691b...ac7539`; ethereum `0xd2092f...31f3be` | ⚠️ Unaudited |
| ContractKeyUtils | unknown | ethereum | n/a | [`0x43cd0b...03ea33`](./contracts/ethereum-1/0x43cd0b93b7cdf165643d362ac74ced9ec303ea33/) | ⚠️ Unaudited |
| CryptoKittiesWrapper | unknown | ethereum | n/a | [`0x80d654...2cf942`](./contracts/ethereum-1/0x80d6540b88ea6c7ae2e229b900fc6542182cf942/) | ⚠️ Unaudited |
| DelegateCashPlugin | unknown | ethereum | n/a | [`0xf7be10...1f4832`](./contracts/ethereum-1/0xf7be105003c71bbedf377fa61855364bcf1f4832/) | ⚠️ Unaudited |
| DirectLoanCoordinator | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0c90c8...f54082`](./contracts/ethereum-1/0x0c90c8b4aa8549656851964d5fb787f0e4f54082/); ethereum `0x329e09...e7072a` | ⚠️ Unaudited |
| ERC20TransferManager | unknown | ethereum | n/a | [`0x673069...902ca0`](./contracts/ethereum-1/0x6730697f33d6d2490029b32899e7865c0d902ca0/) | ⚠️ Unaudited |
| Escrow | unknown | ethereum | n/a | [`0x2ae3e4...7f5351`](./contracts/ethereum-1/0x2ae3e46290ade43593eabd15642ebd67157f5351/) | ⚠️ Unaudited |
| LegacyNftfiRefinancingAdapterV2_1 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x885425...343f3a`](./contracts/ethereum-1/0x885425bc042b2e1176fd1263a5dd02aa81343f3a/); ethereum `0xadcd6a...341b49` | ⚠️ Unaudited |
| LoanAirdropUtils | unknown | ethereum | n/a | [`0xa1d4fd...02d357`](./contracts/ethereum-1/0xa1d4fd6c256d6ef5661f7c01dd2b95e90c02d357/) | ⚠️ Unaudited |
| LoanChecksAndCalculations | unknown | ethereum | n/a | 2 deployments: ethereum [`0x560f32...63c898`](./contracts/ethereum-1/0x560f32d9a54d6372429827005bd20aef4a63c898/); ethereum `0xc95596...722294` | ⚠️ Unaudited |
| LoanChecksAndCalculations | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6048c0...b4ade2`](./contracts/ethereum-1/0x6048c06d97ba978a203519a0d079aeaff2b4ade2/); ethereum `0xf89652...31f280` | ⚠️ Unaudited |
| LoanCoordinator | unknown | ethereum | n/a | [`0xa6d93a...4fd2e6`](./contracts/ethereum-1/0xa6d93abc54268cf849a93e867c129786f04fd2e6/) | ⚠️ Unaudited |
| MigrateBundle | unknown | ethereum | n/a | [`0xa2cb0d...1bec2f`](./contracts/ethereum-1/0xa2cb0de6006eff2b5b20719152231bcd651bec2f/) | ⚠️ Unaudited |
| Miladys | unknown | ethereum | n/a | [`0x5af0d9...a425a5`](./contracts/ethereum-1/0x5af0d9827e0c53e4799bb226655a1de152a425a5/) | ⚠️ Unaudited |
| NftfiHub | unknown | ethereum | n/a | 3 deployments: ethereum [`0x4deacd...7f8eda`](./contracts/ethereum-1/0x4deacddef0e6ada9a35e360126181c75fa7f8eda/); ethereum `0xa7c134...3bf417`; ethereum `0xd99b80...01a578` | ⚠️ Unaudited |
| NftfiRefinancingAdapter | unknown | ethereum | n/a | 2 deployments: ethereum [`0x127a60...f62964`](./contracts/ethereum-1/0x127a60b674db9195e4e3cf3656d614c23df62964/); ethereum `0xad4244...458d1d` | ⚠️ Unaudited |
| NFTfiSigningUtils | unknown | ethereum | n/a | 3 deployments: ethereum [`0x199e38...23673f`](./contracts/ethereum-1/0x199e38f5ed54bc56c4dc7fdd0c5c64eae923673f/); ethereum `0x60da56...d56347`; ethereum `0xd7220c...fe96b1` | ⚠️ Unaudited |
| NFTfiSigningUtilsContract | unknown | ethereum | n/a | 3 deployments: ethereum [`0x43e5a2...29bbee`](./contracts/ethereum-1/0x43e5a2985897b4e0175ed3a3f527a597cb29bbee/); ethereum `0x5a42d7...3c0e6f`; ethereum `0x898d59...c21889` | ⚠️ Unaudited |
| PermittedNFTsAndTypeRegistry | unknown | ethereum | n/a | 2 deployments: ethereum [`0xadde73...4879ac`](./contracts/ethereum-1/0xadde73498902f61bfcb702e94c31c13c534879ac/); ethereum `0xc4d722...e1af6e` | ⚠️ Unaudited |
| PersonalBundler | unknown | ethereum | n/a | 2 deployments: ethereum [`0x04dc8e...266d1a`](./contracts/ethereum-1/0x04dc8ec70441d723b20e01044097b18766266d1a/); ethereum `0xec9b7e...3eae04` | ⚠️ Unaudited |
| PersonalBundlerFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0x780c9f...d9a3b2`](./contracts/ethereum-1/0x780c9fd619846a31dd5a8c2f0855206507d9a3b2/); ethereum `0xfc0c62...751a81` | ⚠️ Unaudited |
| PersonalEscrow | unknown | ethereum | n/a | [`0xc8eb63...f1a857`](./contracts/ethereum-1/0xc8eb63ad2541d51712a09f0ccd168b0b67f1a857/) | ⚠️ Unaudited |
| PersonalEscrowFactory | unknown | ethereum | n/a | [`0xe1958e...283d4a`](./contracts/ethereum-1/0xe1958e02be00b9a64a2f0d87f9d823f6c5283d4a/) | ⚠️ Unaudited |
| Refinancing | unknown | ethereum | n/a | [`0x6701b1...57dd0c`](./contracts/ethereum-1/0x6701b1d2e6d34727c0c37cdbd0cf421d3357dd0c/) | ⚠️ Unaudited |
| SuperRareV1Wrapper | unknown | ethereum | n/a | [`0x933be5...e0ab4e`](./contracts/ethereum-1/0x933be5c3c7613ba9889b81782f00eb521ae0ab4e/) | ⚠️ Unaudited |
| TokenTrade | unknown | ethereum | n/a | [`0xd0beb5...24b414`](./contracts/ethereum-1/0xd0beb5f2bf7853ea93a3aea0a51c2ba50724b414/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x97b6ac...d7f22b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc0003a...67df44` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [www.chainsecurity.com/security-audit/nftfi](https://www.chainsecurity.com/security-audit/nftfi) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ChainSecurity_POANetwork_SBCDeposit_Audit.pdf](https://reports.chainsecurity.com/POANetwork/ChainSecurity_POANetwork_SBCDeposit_Audit.pdf) | ChainSecurity | Audit | 2021-10 | stale | Direct | n/a | 0 | n/a |
| [NFTfi_Ethereum_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://github.com/HalbornSecurity/PublicReports/blob/master/Solidity%20Smart%20Contract%20Audits/NFTfi_Ethereum_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-03 | stale | Direct | contract_name | 3 | n/a |
| [NFTfi_eth_nftfi_Collection_Offer_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://github.com/HalbornSecurity/PublicReports/blob/master/Solidity%20Smart%20Contract%20Audits/NFTfi_eth_nftfi_Collection_Offer_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-08 | stale | Direct | contract_name | 1 | n/a |
| [NFTfi_DirectLoanFixedOffer_Redeployment_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://github.com/HalbornSecurity/PublicReports/blob/master/Solidity%20Smart%20Contract%20Audits/NFTfi_DirectLoanFixedOffer_Redeployment_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-11 | stale | Direct | contract_name | 2 | n/a |
| [NFTfi_Bundles_Airdrop_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://github.com/HalbornSecurity/PublicReports/blob/master/Solidity%20Smart%20Contract%20Audits/NFTfi_Bundles_Airdrop_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-12 | stale | Direct | contract_name | 2 | n/a |
| [NFTfi_Native_Punk_Wrapper_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://github.com/HalbornSecurity/PublicReports/blob/master/Solidity%20Smart%20Contract%20Audits/NFTfi_Native_Punk_Wrapper_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2023-02 | stale | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 40 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: contract_name=8, extraction_exact=2

Zero-match audit list:

- [13564] www.chainsecurity.com/security-audit/nftfi
- [13565] ChainSecurity_POANetwork_SBCDeposit_Audit.pdf

Fork inheritance lineage and inherited audits are included when available.
