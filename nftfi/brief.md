# Agentic Audit Brief: NFTfi

## Project Overview

- Project: NFTfi (`nftfi`)
- Website: [https://www.nftfi.com/](https://www.nftfi.com/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:38.738Z
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
| DirectLoanFixedCollectionOffer | unknown | ethereum | n/a | 2 deployments: ethereum [`0xd0c6e59b50c32530c627107f50acc71958c4341f`](./contracts/ethereum-1/0xd0c6e59b50c32530c627107f50acc71958c4341f/); ethereum `0xe52cec0e90115abeb3304baa36bc2655731f7934` | ✅ Audited |
| DirectLoanFixedOffer | unknown | ethereum | n/a | [`0xd0a40eb7fd94ee97102ba8e9342243a2b2e22207`](./contracts/ethereum-1/0xd0a40eb7fd94ee97102ba8e9342243a2b2e22207/) | ✅ Audited |
| DirectLoanFixedOfferRedeploy | unknown | ethereum | n/a | [`0x8252df1d8b29057d1afe3062bf5a64d503152bc8`](./contracts/ethereum-1/0x8252df1d8b29057d1afe3062bf5a64d503152bc8/) | ✅ Audited |
| ImmutableBundle | unknown | ethereum | n/a | 3 deployments: ethereum [`0x46c9cfb32627b74f91e0b5ad575c247aec7e7847`](./contracts/ethereum-1/0x46c9cfb32627b74f91e0b5ad575c247aec7e7847/); ethereum `0x9a129032f01eb4ddd764c1777c81b771c34a2fbe`; ethereum `0xb9f55139fc79ed58d9845461f70483f778ebfef2` | ✅ Audited |
| NftfiBundler | token | ethereum | n/a | 4 deployments: ethereum [`0x0259119359bf053ebf42c9807752de6bbb4925f3`](./contracts/ethereum-1/0x0259119359bf053ebf42c9807752de6bbb4925f3/); ethereum `0x16c583748faed1c5a5bcd744b4892ee6b6290094`; ethereum `0x18faa7748bfd533638aab95c2e26f4df00614aeb`; ethereum `0xf8cb0341563213bf33eaffc7a6775ed0eb6c1401` | ✅ Audited |
| PunkWrapper | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0a6734a4bbac197190d79b3d3985fa04552e40c6`](./contracts/ethereum-1/0x0a6734a4bbac197190d79b3d3985fa04552e40c6/); ethereum `0xf4cb058ab8f253c6085839bf87d7b369b90d7a44` | ✅ Audited |
| SmartNft | unknown | ethereum | n/a | 6 deployments: ethereum [`0x20895578f8ecff6ab34c9928544077ff595f177c`](./contracts/ethereum-1/0x20895578f8ecff6ab34c9928544077ff595f177c/); ethereum `0x48ed998e778ab2663b6c49bd09dfff8efd16b934`; ethereum `0x5660e206496808f7b5cdb8c56a696a96ae5e9b23`; ethereum `0x77b53beb7f13bd38de9f76eed2f2c4f9efff7f4c`; ethereum `0xaabd3ebcc6ae1e87150c6184c038b94dc01a7708`; ethereum `0xe73ece5988fff33a012cea8bb6fd5b27679fc481` | ✅ Audited |

### ⚠️ Verified + Unaudited (31)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AirdropFlashLoan | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3b043958181e0e5282e5415c953b146024e1ec97`](./contracts/ethereum-1/0x3b043958181e0e5282e5415c953b146024e1ec97/); ethereum `0xdcb004c4ab4b9c12e6bb4ed7992bb78218e96520` | ⚠️ Unaudited |
| AirdropReceiver | unknown | ethereum | n/a | [`0x3f4cc2848bc51ef6ebdba503847d007f823e5a78`](./contracts/ethereum-1/0x3f4cc2848bc51ef6ebdba503847d007f823e5a78/) | ⚠️ Unaudited |
| AirdropReceiverFactory | unknown | ethereum | n/a | [`0xe5cec9945d82e54c853baa99cb9076a48bc7d41d`](./contracts/ethereum-1/0xe5cec9945d82e54c853baa99cb9076a48bc7d41d/) | ⚠️ Unaudited |
| AssetOfferLoan | unknown | ethereum | n/a | [`0x9f10d706d789e4c76a1a6434cd1a9841c875c0a6`](./contracts/ethereum-1/0x9f10d706d789e4c76a1a6434cd1a9841c875c0a6/) | ⚠️ Unaudited |
| CollectionOfferLoan | unknown | ethereum | n/a | [`0xb6adec2acc851d30d5fb64f3137234bcdcbbad0d`](./contracts/ethereum-1/0xb6adec2acc851d30d5fb64f3137234bcdcbbad0d/) | ⚠️ Unaudited |
| ContractKeys | unknown | ethereum | n/a | 3 deployments: ethereum [`0x733ac632056aa272130af63809ff3301c80bd1e7`](./contracts/ethereum-1/0x733ac632056aa272130af63809ff3301c80bd1e7/); ethereum `0xc0691b4bb84f05ec8e2255a50487c8d67bac7539`; ethereum `0xd2092faba1019ceb00cdaa209dca1d1cc231f3be` | ⚠️ Unaudited |
| ContractKeyUtils | unknown | ethereum | n/a | [`0x43cd0b93b7cdf165643d362ac74ced9ec303ea33`](./contracts/ethereum-1/0x43cd0b93b7cdf165643d362ac74ced9ec303ea33/) | ⚠️ Unaudited |
| CryptoKittiesWrapper | unknown | ethereum | n/a | [`0x80d6540b88ea6c7ae2e229b900fc6542182cf942`](./contracts/ethereum-1/0x80d6540b88ea6c7ae2e229b900fc6542182cf942/) | ⚠️ Unaudited |
| DelegateCashPlugin | unknown | ethereum | n/a | [`0xf7be105003c71bbedf377fa61855364bcf1f4832`](./contracts/ethereum-1/0xf7be105003c71bbedf377fa61855364bcf1f4832/) | ⚠️ Unaudited |
| DirectLoanCoordinator | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0c90c8b4aa8549656851964d5fb787f0e4f54082`](./contracts/ethereum-1/0x0c90c8b4aa8549656851964d5fb787f0e4f54082/); ethereum `0x329e090ace410ac8d86f1f0c2a13486884e7072a` | ⚠️ Unaudited |
| ERC20TransferManager | unknown | ethereum | n/a | [`0x6730697f33d6d2490029b32899e7865c0d902ca0`](./contracts/ethereum-1/0x6730697f33d6d2490029b32899e7865c0d902ca0/) | ⚠️ Unaudited |
| Escrow | unknown | ethereum | n/a | [`0x2ae3e46290ade43593eabd15642ebd67157f5351`](./contracts/ethereum-1/0x2ae3e46290ade43593eabd15642ebd67157f5351/) | ⚠️ Unaudited |
| LegacyNftfiRefinancingAdapterV2_1 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x885425bc042b2e1176fd1263a5dd02aa81343f3a`](./contracts/ethereum-1/0x885425bc042b2e1176fd1263a5dd02aa81343f3a/); ethereum `0xadcd6a129973611545dba37e0e0fb479e1341b49` | ⚠️ Unaudited |
| LoanAirdropUtils | unknown | ethereum | n/a | [`0xa1d4fd6c256d6ef5661f7c01dd2b95e90c02d357`](./contracts/ethereum-1/0xa1d4fd6c256d6ef5661f7c01dd2b95e90c02d357/) | ⚠️ Unaudited |
| LoanChecksAndCalculations | unknown | ethereum | n/a | 2 deployments: ethereum [`0x560f32d9a54d6372429827005bd20aef4a63c898`](./contracts/ethereum-1/0x560f32d9a54d6372429827005bd20aef4a63c898/); ethereum `0xc955962611226cd2ae467a097aec900e4b722294` | ⚠️ Unaudited |
| LoanChecksAndCalculations | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6048c06d97ba978a203519a0d079aeaff2b4ade2`](./contracts/ethereum-1/0x6048c06d97ba978a203519a0d079aeaff2b4ade2/); ethereum `0xf896527c49b44aab3cf22ae356fa3af8e331f280` | ⚠️ Unaudited |
| LoanCoordinator | unknown | ethereum | n/a | [`0xa6d93abc54268cf849a93e867c129786f04fd2e6`](./contracts/ethereum-1/0xa6d93abc54268cf849a93e867c129786f04fd2e6/) | ⚠️ Unaudited |
| MigrateBundle | unknown | ethereum | n/a | [`0xa2cb0de6006eff2b5b20719152231bcd651bec2f`](./contracts/ethereum-1/0xa2cb0de6006eff2b5b20719152231bcd651bec2f/) | ⚠️ Unaudited |
| Miladys | unknown | ethereum | n/a | [`0x5af0d9827e0c53e4799bb226655a1de152a425a5`](./contracts/ethereum-1/0x5af0d9827e0c53e4799bb226655a1de152a425a5/) | ⚠️ Unaudited |
| NftfiHub | unknown | ethereum | n/a | 3 deployments: ethereum [`0x4deacddef0e6ada9a35e360126181c75fa7f8eda`](./contracts/ethereum-1/0x4deacddef0e6ada9a35e360126181c75fa7f8eda/); ethereum `0xa7c134e0ba7295ebbd396a7c6b03a0abfd3bf417`; ethereum `0xd99b8075cb583fde8f60a2c3ac84ee37c701a578` | ⚠️ Unaudited |
| NftfiRefinancingAdapter | unknown | ethereum | n/a | 2 deployments: ethereum [`0x127a60b674db9195e4e3cf3656d614c23df62964`](./contracts/ethereum-1/0x127a60b674db9195e4e3cf3656d614c23df62964/); ethereum `0xad42445545c9a368fba9e71f9b4b441be6458d1d` | ⚠️ Unaudited |
| NFTfiSigningUtils | unknown | ethereum | n/a | 3 deployments: ethereum [`0x199e38f5ed54bc56c4dc7fdd0c5c64eae923673f`](./contracts/ethereum-1/0x199e38f5ed54bc56c4dc7fdd0c5c64eae923673f/); ethereum `0x60da568b88037d0735715819a37714d28bd56347`; ethereum `0xd7220cbe711aa5cc6dc15dc9dd0bf6e5fbfe96b1` | ⚠️ Unaudited |
| NFTfiSigningUtilsContract | unknown | ethereum | n/a | 3 deployments: ethereum [`0x43e5a2985897b4e0175ed3a3f527a597cb29bbee`](./contracts/ethereum-1/0x43e5a2985897b4e0175ed3a3f527a597cb29bbee/); ethereum `0x5a42d72372858e10edc03b26bf449f78ff3c0e6f`; ethereum `0x898d598b1e929dd77910d296c7524b2bb8c21889` | ⚠️ Unaudited |
| PermittedNFTsAndTypeRegistry | unknown | ethereum | n/a | 2 deployments: ethereum [`0xadde73498902f61bfcb702e94c31c13c534879ac`](./contracts/ethereum-1/0xadde73498902f61bfcb702e94c31c13c534879ac/); ethereum `0xc4d7226265616ad4d866033110c17144ace1af6e` | ⚠️ Unaudited |
| PersonalBundler | unknown | ethereum | n/a | 2 deployments: ethereum [`0x04dc8ec70441d723b20e01044097b18766266d1a`](./contracts/ethereum-1/0x04dc8ec70441d723b20e01044097b18766266d1a/); ethereum `0xec9b7e765ba9637679a347bb8cd39486723eae04` | ⚠️ Unaudited |
| PersonalBundlerFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0x780c9fd619846a31dd5a8c2f0855206507d9a3b2`](./contracts/ethereum-1/0x780c9fd619846a31dd5a8c2f0855206507d9a3b2/); ethereum `0xfc0c62626bda9608d4d63edd9ab2cf406f751a81` | ⚠️ Unaudited |
| PersonalEscrow | unknown | ethereum | n/a | [`0xc8eb63ad2541d51712a09f0ccd168b0b67f1a857`](./contracts/ethereum-1/0xc8eb63ad2541d51712a09f0ccd168b0b67f1a857/) | ⚠️ Unaudited |
| PersonalEscrowFactory | unknown | ethereum | n/a | [`0xe1958e02be00b9a64a2f0d87f9d823f6c5283d4a`](./contracts/ethereum-1/0xe1958e02be00b9a64a2f0d87f9d823f6c5283d4a/) | ⚠️ Unaudited |
| Refinancing | unknown | ethereum | n/a | [`0x6701b1d2e6d34727c0c37cdbd0cf421d3357dd0c`](./contracts/ethereum-1/0x6701b1d2e6d34727c0c37cdbd0cf421d3357dd0c/) | ⚠️ Unaudited |
| SuperRareV1Wrapper | unknown | ethereum | n/a | [`0x933be5c3c7613ba9889b81782f00eb521ae0ab4e`](./contracts/ethereum-1/0x933be5c3c7613ba9889b81782f00eb521ae0ab4e/) | ⚠️ Unaudited |
| TokenTrade | unknown | ethereum | n/a | [`0xd0beb5f2bf7853ea93a3aea0a51c2ba50724b414`](./contracts/ethereum-1/0xd0beb5f2bf7853ea93a3aea0a51c2ba50724b414/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | n/a | `0x97b6ac36f2336b9780a12bff3988d92744d7f22b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc0003a6dbd590115232aa2667c335ea53167df44` | ❓ Unverified |

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

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x3b043958181e0e5282e5415c953b146024e1ec97`](./contracts/ethereum-1/0x3b043958181e0e5282e5415c953b146024e1ec97/) | AirdropFlashLoan | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3f4cc2848bc51ef6ebdba503847d007f823e5a78`](./contracts/ethereum-1/0x3f4cc2848bc51ef6ebdba503847d007f823e5a78/) | AirdropReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe5cec9945d82e54c853baa99cb9076a48bc7d41d`](./contracts/ethereum-1/0xe5cec9945d82e54c853baa99cb9076a48bc7d41d/) | AirdropReceiverFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9f10d706d789e4c76a1a6434cd1a9841c875c0a6`](./contracts/ethereum-1/0x9f10d706d789e4c76a1a6434cd1a9841c875c0a6/) | AssetOfferLoan | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb6adec2acc851d30d5fb64f3137234bcdcbbad0d`](./contracts/ethereum-1/0xb6adec2acc851d30d5fb64f3137234bcdcbbad0d/) | CollectionOfferLoan | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x733ac632056aa272130af63809ff3301c80bd1e7`](./contracts/ethereum-1/0x733ac632056aa272130af63809ff3301c80bd1e7/) | ContractKeys | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x43cd0b93b7cdf165643d362ac74ced9ec303ea33`](./contracts/ethereum-1/0x43cd0b93b7cdf165643d362ac74ced9ec303ea33/) | ContractKeyUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x80d6540b88ea6c7ae2e229b900fc6542182cf942`](./contracts/ethereum-1/0x80d6540b88ea6c7ae2e229b900fc6542182cf942/) | CryptoKittiesWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf7be105003c71bbedf377fa61855364bcf1f4832`](./contracts/ethereum-1/0xf7be105003c71bbedf377fa61855364bcf1f4832/) | DelegateCashPlugin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c90c8b4aa8549656851964d5fb787f0e4f54082`](./contracts/ethereum-1/0x0c90c8b4aa8549656851964d5fb787f0e4f54082/) | DirectLoanCoordinator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6730697f33d6d2490029b32899e7865c0d902ca0`](./contracts/ethereum-1/0x6730697f33d6d2490029b32899e7865c0d902ca0/) | ERC20TransferManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2ae3e46290ade43593eabd15642ebd67157f5351`](./contracts/ethereum-1/0x2ae3e46290ade43593eabd15642ebd67157f5351/) | Escrow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x885425bc042b2e1176fd1263a5dd02aa81343f3a`](./contracts/ethereum-1/0x885425bc042b2e1176fd1263a5dd02aa81343f3a/) | LegacyNftfiRefinancingAdapterV2_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa1d4fd6c256d6ef5661f7c01dd2b95e90c02d357`](./contracts/ethereum-1/0xa1d4fd6c256d6ef5661f7c01dd2b95e90c02d357/) | LoanAirdropUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x560f32d9a54d6372429827005bd20aef4a63c898`](./contracts/ethereum-1/0x560f32d9a54d6372429827005bd20aef4a63c898/) | LoanChecksAndCalculations | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6048c06d97ba978a203519a0d079aeaff2b4ade2`](./contracts/ethereum-1/0x6048c06d97ba978a203519a0d079aeaff2b4ade2/) | LoanChecksAndCalculations | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa6d93abc54268cf849a93e867c129786f04fd2e6`](./contracts/ethereum-1/0xa6d93abc54268cf849a93e867c129786f04fd2e6/) | LoanCoordinator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa2cb0de6006eff2b5b20719152231bcd651bec2f`](./contracts/ethereum-1/0xa2cb0de6006eff2b5b20719152231bcd651bec2f/) | MigrateBundle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5af0d9827e0c53e4799bb226655a1de152a425a5`](./contracts/ethereum-1/0x5af0d9827e0c53e4799bb226655a1de152a425a5/) | Miladys | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4deacddef0e6ada9a35e360126181c75fa7f8eda`](./contracts/ethereum-1/0x4deacddef0e6ada9a35e360126181c75fa7f8eda/) | NftfiHub | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x127a60b674db9195e4e3cf3656d614c23df62964`](./contracts/ethereum-1/0x127a60b674db9195e4e3cf3656d614c23df62964/) | NftfiRefinancingAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x199e38f5ed54bc56c4dc7fdd0c5c64eae923673f`](./contracts/ethereum-1/0x199e38f5ed54bc56c4dc7fdd0c5c64eae923673f/) | NFTfiSigningUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x43e5a2985897b4e0175ed3a3f527a597cb29bbee`](./contracts/ethereum-1/0x43e5a2985897b4e0175ed3a3f527a597cb29bbee/) | NFTfiSigningUtilsContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xadde73498902f61bfcb702e94c31c13c534879ac`](./contracts/ethereum-1/0xadde73498902f61bfcb702e94c31c13c534879ac/) | PermittedNFTsAndTypeRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04dc8ec70441d723b20e01044097b18766266d1a`](./contracts/ethereum-1/0x04dc8ec70441d723b20e01044097b18766266d1a/) | PersonalBundler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x780c9fd619846a31dd5a8c2f0855206507d9a3b2`](./contracts/ethereum-1/0x780c9fd619846a31dd5a8c2f0855206507d9a3b2/) | PersonalBundlerFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc8eb63ad2541d51712a09f0ccd168b0b67f1a857`](./contracts/ethereum-1/0xc8eb63ad2541d51712a09f0ccd168b0b67f1a857/) | PersonalEscrow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe1958e02be00b9a64a2f0d87f9d823f6c5283d4a`](./contracts/ethereum-1/0xe1958e02be00b9a64a2f0d87f9d823f6c5283d4a/) | PersonalEscrowFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6701b1d2e6d34727c0c37cdbd0cf421d3357dd0c`](./contracts/ethereum-1/0x6701b1d2e6d34727c0c37cdbd0cf421d3357dd0c/) | Refinancing | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x933be5c3c7613ba9889b81782f00eb521ae0ab4e`](./contracts/ethereum-1/0x933be5c3c7613ba9889b81782f00eb521ae0ab4e/) | SuperRareV1Wrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd0beb5f2bf7853ea93a3aea0a51c2ba50724b414`](./contracts/ethereum-1/0xd0beb5f2bf7853ea93a3aea0a51c2ba50724b414/) | TokenTrade | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 38 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 2 |

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
