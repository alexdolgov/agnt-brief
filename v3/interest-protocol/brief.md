# Agentic Audit Brief: Interest Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `12555af2097191e60e7a3dc0743058c9046ed87a105382bdae663a49f79103f7`

## Project Overview

- Project: Interest Protocol (`interest-protocol`)
- Website: [https://interestprotocol.io/#/](https://interestprotocol.io/#/)
- Lifecycle: unknown
- Generated: 2026-07-17T12:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum, optimism, polygon
- Contract surface: 126 unique implementations (193 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $1,181,379.44
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Interest Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 51 contract row(s) across ethereum, polygon. Structural roles: 41 unclassified, 5 core, 5 supporting. 5 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 51
- Structural roles: unclassified (41), core (5), supporting (5)
- Contract kinds: contract (46), abstract (5)
- Detected standards: ownable (4), erc1967proxy (2), erc20 (2), pausable (1)
- Frameworks: openzeppelin (7), openzeppelin-upgradeable (5), foundry (2)
- Upgradeable-pattern rows: 5

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 51; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 86 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 40 discovered implementations shown in the inventory but excluded from coverage (53 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 28
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/70
- Verified + Unaudited implementations: 70
- Verified by bytecode match: 0
- Unverified implementations: 56
- Unique implementations: 126
- Raw deployments: 193
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (70)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AnchoredViewRelay | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 15 deployments: ethereum `0x0f2f7aa507d153ac04431a617840d1ff28a960ac`; ethereum `0x2338457f771cf7ca7889aad848eeba18807cb206`; ethereum `0x705a8a3e6f179cd9f32e60fa75c302188a97b378`; ethereum `0x8415011818c398dc40258f699a7cb58c85953f43`; ethereum `0x8d63e151e3b6b0828bebd212400ab9aaafdef312`; ethereum `0x8ed31d7ff5d2ffbf17fe3118a61123f50adb523a`; ethereum `0x92353938a5fa4a02bea4ff7561280b12293bb195`; ethereum `0x924854279824c9c05da81d3cd1fbde30ea3c71b6`; ethereum `0x93cef8012460764d201b654fea85abecb28919fd`; ethereum `0xae7be6fe233bd33f9f9149050932cba728793fdd`; ethereum `0xc91814dde87f7dddd9b808b3b6572678b3df48d2`; ethereum `0xcf2fcd9b87113139e809d5f9ea6f4d571bb1c12a`; ethereum `0xd3ced54e5f5d950b1b8711a178e4eab2de5db3ec`; ethereum `0xde67fe89fbac308339a317905c9e61ddbdd8832e`; ethereum `0xf6f296542fb3870b6dcc6b93a18f8b762f16aecf` | ⚠️ Unaudited |
| AnchoredViewRelay | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-242962 | `0x27fc4059860f3d9758dcc9a871838f06333fc6ed` | ⚠️ Unaudited |
| AnchoredViewRelay | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-242965 | `0x610d4dfac3ec32e0be98d18ddb280dacd76a1889` | ⚠️ Unaudited |
| AnchoredViewRelay | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-242966 | `0x65da327b1740d00ff7b366a4fd8f33830a2f03a2` | ⚠️ Unaudited |
| AnchoredViewRelay | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-242967 | `0x69f3d75fa1eaa2a46005d566ec784fe9059bb04b` | ⚠️ Unaudited |
| AnchoredViewRelay | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-242968 | `0x6db54416cbb28c6a78f606947df53e83dd69eb70` | ⚠️ Unaudited |
| AnchoredViewRelay | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-242969 | `0x73052741d8be063b086c4b7efe084b0cee50677a` | ⚠️ Unaudited |
| AnchoredViewRelay | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-242970 | `0x864991b13691806be077e7ca9ef566fe7762f908` | ⚠️ Unaudited |
| AnchoredViewRelay | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-242971 | `0x8bfe7ae486250dbf2901843cc73b91843c2879de` | ⚠️ Unaudited |
| AnchoredViewRelay | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-242972 | `0x8e7d39560b15b2d29e01b2502252c4b5f26f5326` | ⚠️ Unaudited |
| AnchoredViewRelay | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-242973 | `0x93a3411c9518d9c85054693137c87c5f14e7ecf9` | ⚠️ Unaudited |
| AnchoredViewRelay | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-242976 | `0xce554405b9a257ed00a4e0f114ff12ab832b4e3b` | ⚠️ Unaudited |
| AnchoredViewRelay | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-242977 | `0xef12fa3183362506a2dd0ff1cf06b2f4156e751e` | ⚠️ Unaudited |
| AnchoredViewRelay | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-242979 | `0xf5e0e2827f60580304522e2c38177dfec7a428a4` | ⚠️ Unaudited |
| AnchoredViewRelay | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-242980 | `0xfde4c96c8593536e31f229ea8f37b2ada2699bb2` | ⚠️ Unaudited |
| BPTstablePoolOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0xcee78ce44e98d16f59c775494be24e0d2cff19a4`; ethereum `0xd26567e51be02b3c835fd57b30d461a029e3986b`; ethereum `0xd6b002316d4e13d2b7eaff3fa5fc6c20d2cef4be` | ⚠️ Unaudited |
| CappedBptToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0cdb61ab468a2f89d1636c95b32d88c0ea6ef826`; ethereum `0x7d3cd037ae7efa9ebed7432c11c9dfa73519303d` | ⚠️ Unaudited |
| CappedERC4626 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-242961 | `0x09fd32c702117bb1deaa2dd43e2bc8a63a831c7a` | ⚠️ Unaudited |
| CappedERC4626 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x739d346421a42beb13fd8d560dd2f42250d4ac88` | ⚠️ Unaudited |
| CappedGovToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0451f2d1d1b651dec8bfaa814e9aefdb6f6dfca7`; ethereum `0x361093a2221afe4619e4124b22d6f2146d8109aa` | ⚠️ Unaudited |
| CappedGovToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-242992 | 2 deployments: ethereum `0x05498574bd0fa99eecb01e1241661e7ee58f8a85`; ethereum `0xe565e118e75304dd3cf83dff409c90034b7ea18a` | ⚠️ Unaudited |
| CappedGovToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0cef7fcc8d24782c21b08694526600e190a07e0a`; ethereum `0xddad1d1127a7042f43cfc209b954cfc37f203897` | ⚠️ Unaudited |
| CappedGovToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-242981 | 2 deployments: ethereum `0x0f0767402a2d4399f2649c885ed3bf47099b461b`; ethereum `0xfb42f5afb722d2b01548f77c31ac05bf80e03381` | ⚠️ Unaudited |
| CappedGovToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x42b4d79ae23165541f24c4cd52494fe8516b3c80`; ethereum `0x6ebf5bb031ac1edf004b51ea8cbad2c5a2779cf2` | ⚠️ Unaudited |
| CappedGovToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-242984 | 2 deployments: ethereum `0x4f23dcc38438fb01960aff49daeeeef7242df4ff`; ethereum `0x7c1caa71943ef43e9b203b02678000755a4ecde9` | ⚠️ Unaudited |
| CappedGovToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-242985 | 2 deployments: ethereum `0x5a6752f16b81a8dfed84c785b49693573e5baf1a`; ethereum `0xddb3bcfe0304c970e263bf1366db8ed4de0e357a` | ⚠️ Unaudited |
| CappedGovToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-242995 | 2 deployments: ethereum `0x5ac39ed42e14cf330a864d7d1b82690b4d1b9e61`; ethereum `0xf6dcb35f91f740236803635eeca5825cb537e7c0` | ⚠️ Unaudited |
| CappedGovToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x5f39ad3df3ed9cf383eeee45218c33da86479165`; ethereum `0xf8243ecf8f734452b184a1df3ad3cd92fc93b58a` | ⚠️ Unaudited |
| CappedGovToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-242991 | 2 deployments: ethereum `0x64ea012919fd9e53bdccdc0fc89201f484731f41`; ethereum `0xdc94d04a71d01469aab28ae3ae7cf39ecd38765a` | ⚠️ Unaudited |
| CappedGovToken | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 3 deployments: ethereum `0x6b68c5708daffd0393acc6a8cc92f8c2146346ae`; ethereum `0x73ccb09737eda66b66158f140834d68150c4c04b`; ethereum `0xe2c1d2e7aa4008081caafc350a040246b9ebb579` | ⚠️ Unaudited |
| CappedGovToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-242988 | 2 deployments: ethereum `0x99bd1f28a5a7fecbe39a53463a916794be798fc3`; ethereum `0xb9318f3ecea2fc328b9a5165bf19204930236baf` | ⚠️ Unaudited |
| CappedGovToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-242994 | 2 deployments: ethereum `0x9d878ec06f628e883d2f9f1d793adbcfd52822a8`; ethereum `0xf5b8ee284dc7345e861f6353490ec1591cac5df8` | ⚠️ Unaudited |
| CappedGovToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-242974 | `0x9f86bf2c380d3c63177e6104320fd3d1dcae88da` | ⚠️ Unaudited |
| CappedGovToken | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | ethereum | unit-242989 | 2 deployments: ethereum `0xb9cb624d4b21e0239bb149b1b1f1992a0eb351b8`; ethereum `0xdf623240ec300fd9e2b7780b34dc2f417c0ab6d2` | ⚠️ Unaudited |
| CappedGovToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-242990 | 2 deployments: ethereum `0xbdcf0bb40eb8642f907133bdb5fcc681d81f0651`; ethereum `0xd3bd7a8777c042de830965de1c1bcc9784135dd2` | ⚠️ Unaudited |
| CappedMkrToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2c52ee10bd58efa20fc6ee418bf9085639e8247e`; ethereum `0xe4fd7f0f9d0749dd4863fb6827db6f0b06368f01` | ⚠️ Unaudited |
| CappedMkrToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x99904e5369c551e0a9824e9e95141c46ae2e1b0f`; ethereum `0xbb5578c08bc08c15ace5cd09c6683ccccb2a9148` | ⚠️ Unaudited |
| CHI_Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9aa2ccb26686dd7698778599cd0f4425a5231e18` | ⚠️ Unaudited |
| EtherlandsToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7d60fc2f2219537c2605b827fb08f00d8ead44ae`; ethereum `0xba0191da85b97ab9d7a334a06dc1623967a526f5` | ⚠️ Unaudited |
| FlashLoanLever | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x88f2803a9e52ca7c26b2f52740facd50d38487b9` | ⚠️ Unaudited |
| FlashSwapLever | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2db08783f13c4225a1963b2437f0d459a5bcb4d8`; ethereum `0x696607447225f6690883e718fd0db0abaf36b6e2` | ⚠️ Unaudited |
| GovernorCharlieDelegate | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-242986 | 2 deployments: ethereum `0x266d1020a84b9e8b0ed320831838152075f8c4ca`; ethereum `0x6b91a0ba78acc4a8c7919f96c181a895d5b31563` | ⚠️ Unaudited |
| GovernorCharlieDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x8b3d32cf2bb4d0d16656f4c0b04fa546274f1545`; ethereum `0xdf352c2fcb3cbfdbba619090e2a1deb9ac534a29`; ethereum `0xed6a213928db81a3a60bce25aaf199dbaf01dd25`; ethereum `0xf082066e2f023b57617f2167c1f2a5d93eab65a8` | ⚠️ Unaudited |
| InterestProtocolTokenDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x35bb90c0b96ddb4b93ddf42afedd5204e91a1a10`; ethereum `0xaf239a6fab6a873c779f3f33dbd34104287b93e1` | ⚠️ Unaudited |
| InterestProtocolTokenDelegate | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-242983 | 2 deployments: ethereum `0x384542d720a765ae399cfddf079cbe515731f044`; ethereum `0xd909c5862cdb164adb949d92622082f0092efc3d` | ⚠️ Unaudited |
| InterestProtocolTokenDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x387eedd357836a73ecef07067e6360a95c254b17` | ⚠️ Unaudited |
| Liquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x0f131c38a552142d5753363090f6f7c4e01ab0e4`; ethereum `0x1cc72efbdfb08803bdda911ad895a861e1f91c78`; ethereum `0x285b942297191a7d988ddfe430e6a0945943da08`; ethereum `0x384eab89048520e35309e48ea933d845c495a613`; ethereum `0x48fa7528bfd6164ddf09df0ed22451cf59c84130`; ethereum `0xcc951b45ddb4c354d9df4388b0a1d3204fca80d0` | ⚠️ Unaudited |
| MasterKeeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15518aa548248d97479ca3ae2358266f12b2a61a` | ⚠️ Unaudited |
| MerkleRedeem | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x5757fcbb8367917ffbd1cacd2dd5a9fa0f204a70`; ethereum `0x91a1fb8eeaeb0e05629719938b03ee3c32348cf7`; ethereum `0xda0ec83cb108a9aaf660654a81f380d541e16bef` | ⚠️ Unaudited |
| MKRVotingVaultController | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x491397f7eb6f5d9b82b15cecabff835ba31f217f`; ethereum `0x7b6160a0c3963903c2a050c6637009e2c1c60137` | ⚠️ Unaudited |
| MKRVotingVaultController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeba2255b1e8bb9a5fcd456cf115a467e61008d73` | ⚠️ Unaudited |
| OracleMaster | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-242978 | `0xf4818813045e954f5dc55a40c9b60def0ba3d477` | ⚠️ Unaudited |
| Portico | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x0fe9a1cd02b6633a2c2084ff87e3ee75d3e2081d`; ethereum `0x48b6101128c0ed1e208b7c910e60542a2ee6f476`; ethereum `0x4db1683d60e0a933a9a477a19fa32f472bb9d06e`; ethereum `0xd8e1465908103ed5fd28e381920575fb09beb264`; ethereum `0xf4c22e13414bcc2fab827d62de33c05e9b3955f7` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c3ff7fbeaa7484cdfb7b0632790a67b95e623d3` | ⚠️ Unaudited |
| ProxyAdmin | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-242963 | `0x3d9d8c08dc16aa104b5b24abdd1ad857e2c0d8c5` | ⚠️ Unaudited |
| SlowRoll | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfbd3060fe1ed10c34e236cee837d82f019cf1d1d` | ⚠️ Unaudited |
| StEthOracleRelay | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7bb0e115668a9094cf8b3cea4b274daea4c1e8cd` | ⚠️ Unaudited |
| StEthOracleRelay | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-242975 | `0xaa2639c9dcf71547e585439e8744128ed9832fe8` | ⚠️ Unaudited |
| ThreeLines0_100 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x16ac44b1e161c735d7e372169d3573d920a23906`; ethereum `0x8ef82c4c48faad513d157a86433cd7d9397ea278` | ⚠️ Unaudited |
| ThreeLines0_100 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-242964 | `0x482855c43a0869d93c5ca6d9dc9eddf3dae031ea` | ⚠️ Unaudited |
| Uni | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x1f9840a85d5af5bf1d1762f925bdaddc4201f984` | ⚠️ Unaudited |
| USDI | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-242993 | 2 deployments: ethereum `0x2a54ba2964c8cd459dc568853f79813a60761b58`; ethereum `0xedfec0cb12b39ea11e477e722e06d9cd99a9d57a` | ⚠️ Unaudited |
| USDI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a589d70984bac3c05ec39629222005a44bd0172` | ⚠️ Unaudited |
| VaultController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x0bd408f2b32ca80c54ccdd21acf38bba3d83dfd8`; ethereum `0x2f483ee258d554fae69a30ae788f299a13aed14d`; ethereum `0x8a714b29c53911230a303d1e7d750a6665df5716`; ethereum `0xb5afbb38f00487f2d792b2a18765db9a3019dedf` | ⚠️ Unaudited |
| VaultController | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-242987 | 2 deployments: ethereum `0x4aae9823fb4c70490f1d802fc697f3fff8d5cbe3`; ethereum `0x9bdb5575e24eeb2dca7ba6ce367d609bdeb38246` | ⚠️ Unaudited |
| VotingVaultController | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-242982 | 2 deployments: ethereum `0x17b7bd832666ac28a6ad35a93d4eff4eb9a07a17`; ethereum `0xae49ddca05fe891c6a5492ed52d739ec1328cbe2` | ⚠️ Unaudited |
| VotingVaultController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0xb800ca12a3e37c381e92daa0a2910d70a267da6e`; ethereum `0xc12bdf37a43f693949f4a3dafddb604a069ec21b`; ethereum `0xee0b467eab118171d19667fb963f1ec229feeade` | ⚠️ Unaudited |
| WavePool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x5a4396a2fe5fd36c6528a441d7a97c3b0f3e8aee`; ethereum `0x9fbbf87baa6ec6702742022daa08cc44fddf341d`; ethereum `0xab1b815a8a2e81e001b6fa951d9c0963b7a46da6` | ⚠️ Unaudited |
| wOETH_ORACLE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b518e0c898c0bcd80e8e5b5e8d7735007012834` | ⚠️ Unaudited |
| wstETHRelay | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0e2a18163e6cb2eb11568fad35e42de4ee67ea9a`; ethereum `0x47cbd328b185ea8fc61ead9a32d0edd79067b577` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (56)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x0029abd74b7b32e6a82bf9f62cb9dd4bf8e39aaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x107da33fdfa0661360d91e134fa5f5d4bec25e4d` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x195fc62c513e5163e24cf47ad626bc630c3b3a5d` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x1ea3889f3c0ad7de9bcc7c5f13a668b0b4874344` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x2260fac5e5542a773aa44fbcfedf7c193bc2c599` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x38c5aa75c2e1ecb9750aa2d882adb55742ac967a` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x6e55a6e8a1f37426b22039776431e4d20798d9c1` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x706d1bb99d8ed5b0c02c5e235d8e3f2a406ad429` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78fcf430d81dd51b367b059ea2b9ff69ffa8bd74` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x7fff1525b560cf5da9e9c72736bcc7a908b140d4` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x81f66181ab16faa6f24fac2593fda31bc19ffffa` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x8790784510829cc6398a75b40668b30e9f3e22ac` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x8c8ae22fea16c43743c846902ec7e34204894189` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x8cd06c41617b0882a2a5d1334bde48664fd89b5a` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x9128ba6b88a3851d6aa856aade7da0bb694560db` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x9816d7c448f79cdd4af18c4ae1726a14299e8c75` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x9c3b60a1ad08740fcd842351ff0960c1ee3fea52` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa490ce00e4032a12befa2d3b35dee7333becfe54` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xa8c7eaed981c433a7424ce244d753a69d4e24363` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xa9dd6fb60c84cc4788b02c45b6b3f59f8444674f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xae7ab96520de3a18e5e111b5eaab095312d7fe84` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xb549c8cc8011ca0d023a73dad54d725125b25f31` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xca9e15eb362388ffc537280fae93f35b4a3f230c` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xcd17f6766cdff24a4642b99f0de481c3e704ea39` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xce1cb785fd61153d330cea24f063d7c61c54aad0` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xcfae22ead912f7f8299113915bec0c92f98cd4a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0701a8da2b6c621df7dd82479211ee4690d815e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0cf314c2627965ef4ddcf08c9c446e7867f5d85` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xd38d3b40f5c2a52823ae0932b8d658932fdb9ed1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd652db177583729bdffbbb42bc4342c7f5557e6f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xd829adf0fb755f38d1d691f822619c3fbaa5ccd0` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xdd011f900065fa6319ba496ba618990d155d4fda` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xe53b24294f74018d974f7e47b7d49b6df195387f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xfc6b554818466a53806bb7eb319621d97b851d94` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xfd76d7ecbf91b2bf7f225af29c1cb7f213fa71b6` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xfe1cb3221f13a9c2aa67d29a2b7198e59de2f3b2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | n/a | `0x3389d29e457345e4f22731292d9c10ddfc78088f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | n/a | `0x3c92f99001803a00dad5d800eba5e2f84b1b278e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | n/a | `0x45dda9cb7c25131df268515131f647d726f50608` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | n/a | `0x4fdc91d86743c5a47a2739a1abb9f85e589589ab` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | n/a | `0x74d3c85df4dbd03c7c12f7649faa6457610e7604` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | n/a | `0x847b64f9d3a95e977d157866447a5c0a5dfa0ee5` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | n/a | `0x8afbfe06da3d035c82c5bc55c82eb3ff05506a20` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | n/a | `0x90a972d9b53659150f1412e885e27fb7c2e49110` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | n/a | `0xa2b18457011877db95ed388e5f1b861bc4bcd741` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | n/a | `0xa8a6d7c39270ddc658dc53ecbd0500a4c64c9cc9` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | n/a | `0xbab395136faea31f33f32737218d79e2e92b32c1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | n/a | `0xbc53c5629bb8bb00da575031114fb780581567b7` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | n/a | `0xbeed11d5c8c87facbf3f81728543eb8cb6cba939` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | n/a | `0xd8cd58d478c5beb57e316f3c5d60d4bc3d921293` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | n/a | `0xde31f8bfbd8c84b5360cfacca3539b938dd78ae6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | n/a | `0xdf0fb4e4f928d2dcb76f438575fdd8682386e13c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | n/a | `0xe8504e3b854940818c8f3d61dc155fa9919dd10f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | n/a | `0xf9680d99d6c9589e2a93a78a04a279e509205945` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [GFX_IP_Protocol_Audit_Report.pdf](https://gfx.cafe/ip/contracts/-/blob/master/audit/GFX_IP_Protocol_Audit_Report.pdf) | unknown | Audit | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [Sigma_Prime_-_Interest_Protocol_Smart_Contract_Security_Assessment_Report.pdf](https://github.com/gfx-labs/ip-contracts/blob/master/audit/Sigma_Prime_-_Interest_Protocol_Smart_Contract_Security_Assessment_Report.pdf) | Sigma Prime | Audit | 2022-11 | stale | Direct | n/a | no match | 0 | 0 | 0 | 12 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13289] GFX_IP_Protocol_Audit_Report.pdf — no match: Extracted contract names from findings and advisory sections. The report does not have a formal scope table but mentions contracts by name in findings.
- [13291] Sigma_Prime_-_Interest_Protocol_Smart_Contract_Security_Assessment_Report.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| GFX_IP_Protocol_Audit_Report.pdf | VaultController | unmatched — not counted | — | mentioned in findings and scope | no |
| GFX_IP_Protocol_Audit_Report.pdf | Vault | unmatched — not counted | — | mentioned in findings | no |
| GFX_IP_Protocol_Audit_Report.pdf | UFragments | unmatched — not counted | — | mentioned in findings | no |
| GFX_IP_Protocol_Audit_Report.pdf | TokenDelegate | unmatched — not counted | — | mentioned in findings | no |
| GFX_IP_Protocol_Audit_Report.pdf | GovernorDelegate | unmatched — not counted | — | mentioned in findings | no |
| GFX_IP_Protocol_Audit_Report.pdf | CurveMaster | unmatched — not counted | — | mentioned in findings | no |
| GFX_IP_Protocol_Audit_Report.pdf | ChainlinkOracleRelay | unmatched — not counted | — | mentioned in findings | no |
| GFX_IP_Protocol_Audit_Report.pdf | UniswapV3OracleRelay | unmatched — not counted | — | mentioned in findings | no |
| GFX_IP_Protocol_Audit_Report.pdf | OracleMaster | unmatched — not counted | — | mentioned in findings | no |
| Sigma_Prime_-_Interest_Protocol_Smart_Contract_Security_Assessment_Report.pdf | CappedFeeOnTransferToken | unmatched — not counted | — | — | no |
| Sigma_Prime_-_Interest_Protocol_Smart_Contract_Security_Assessment_Report.pdf | CappedGovToken | unmatched — not counted | — | — | no |
| Sigma_Prime_-_Interest_Protocol_Smart_Contract_Security_Assessment_Report.pdf | GovernorDelegate | unmatched — not counted | — | — | no |
| Sigma_Prime_-_Interest_Protocol_Smart_Contract_Security_Assessment_Report.pdf | SlowRoll | unmatched — not counted | — | — | no |
| Sigma_Prime_-_Interest_Protocol_Smart_Contract_Security_Assessment_Report.pdf | ThreeLines0_100 | unmatched — not counted | — | — | no |
| Sigma_Prime_-_Interest_Protocol_Smart_Contract_Security_Assessment_Report.pdf | TokenDelegate | unmatched — not counted | — | — | no |
| Sigma_Prime_-_Interest_Protocol_Smart_Contract_Security_Assessment_Report.pdf | UFragments | unmatched — not counted | — | — | no |
| Sigma_Prime_-_Interest_Protocol_Smart_Contract_Security_Assessment_Report.pdf | USDI | unmatched — not counted | — | — | no |
| Sigma_Prime_-_Interest_Protocol_Smart_Contract_Security_Assessment_Report.pdf | Vault | unmatched — not counted | — | — | no |
| Sigma_Prime_-_Interest_Protocol_Smart_Contract_Security_Assessment_Report.pdf | VaultController | unmatched — not counted | — | — | no |
| Sigma_Prime_-_Interest_Protocol_Smart_Contract_Security_Assessment_Report.pdf | VotingVault | unmatched — not counted | — | — | no |
| Sigma_Prime_-_Interest_Protocol_Smart_Contract_Security_Assessment_Report.pdf | VotingVaultController | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 67 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 57 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 21 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [13289] GFX_IP_Protocol_Audit_Report.pdf
- [13291] Sigma_Prime_-_Interest_Protocol_Smart_Contract_Security_Assessment_Report.pdf

Fork inheritance lineage and inherited audits are included when available.
