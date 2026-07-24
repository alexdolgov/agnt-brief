# Agentic Audit Brief: Interest Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Interest Protocol (`interest-protocol`)
- Website: [https://interestprotocol.io/#/](https://interestprotocol.io/#/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum, optimism, polygon
- Contract surface: 506 unique implementations (573 raw deployments)
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
- Outside the address book: 420 discovered implementations shown in the inventory but excluded from coverage (53 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 28
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/70
- Verified + Unaudited implementations: 70
- Verified by bytecode match: 0
- Unverified implementations: 436
- Unique implementations: 506
- Raw deployments: 573
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

### ❓ Unverified (436)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x0029abd74b7b32e6a82bf9f62cb9dd4bf8e39aaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x090d4613473dee047c3f2706764f49e0821d256e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x107da33fdfa0661360d91e134fa5f5d4bec25e4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18e433c7bf8a2e1d0197ce5d8f9afada1a771360` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x195fc62c513e5163e24cf47ad626bc630c3b3a5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a9c8182c09f50c8318d769245bea52c32be35bc` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x1ea3889f3c0ad7de9bcc7c5f13a668b0b4874344` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x2260fac5e5542a773aa44fbcfedf7c193bc2c599` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3032ab3fa8c01d786d29dade018d7f2017918e12` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x38c5aa75c2e1ecb9750aa2d882adb55742ac967a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d30b1ab88d487b0f3061f40de76845bec3f1e94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e8640574aa764763291ed733672d3a105107ac5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4750c43867ef5f89869132eccf19b9b6c4286e1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b4e140d1f131fdad6fb59c13af796fd194e4135` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e4be8bc9637f0eaa1a755019e06a68ce081d58f` | ❓ Unverified |
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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca06411bd7a7296d7dbdd0050dfc846e95febeb7` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xca9e15eb362388ffc537280fae93f35b4a3f230c` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xcd17f6766cdff24a4642b99f0de481c3e704ea39` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xce1cb785fd61153d330cea24f063d7c61c54aad0` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xcfae22ead912f7f8299113915bec0c92f98cd4a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0701a8da2b6c621df7dd82479211ee4690d815e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0cf314c2627965ef4ddcf08c9c446e7867f5d85` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xd38d3b40f5c2a52823ae0932b8d658932fdb9ed1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd652db177583729bdffbbb42bc4342c7f5557e6f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xd829adf0fb755f38d1d691f822619c3fbaa5ccd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdaf819c2437a82f9e01f6586207ebf961a7f0970` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xdd011f900065fa6319ba496ba618990d155d4fda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3953d9d317b834592ab58ab2c7a6ad22b54075d` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xe53b24294f74018d974f7e47b7d49b6df195387f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5a5f138005e19a3e6d0fe68b039397eeef2322b` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xfc6b554818466a53806bb7eb319621d97b851d94` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xfd76d7ecbf91b2bf7f225af29c1cb7f213fa71b6` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xfe1cb3221f13a9c2aa67d29a2b7198e59de2f3b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0052f461a5dc0feef70cabc312c9acb1e4afc0a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x00dbeb1e45485d53df7c2f0df1aa0b6dc30311d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x01d24cf63a8bd78193571e3a3bc9b9c83be51b41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0206ad570549c80d6c35b395eac1c774f50ddc76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x02ca7cfe48628257408db5c14b575a8a85a701c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x03bc6d9efed65708d35fdaefb25e87631a0a3437` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x03cd157746c61f44597dd54c6f6702105258c722` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x058115befc3621816ee7a69e651015e45f6e67da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x059628cb867c4292597ed00ff77bc9bad6a987b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x062df9c4efd2030e243ffcc398b652e8b8f95c6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0691f759cf329f573ae464e7fb3d621dfaba7ed8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x074676e9bfbc70042d408423ee59d7fd9522ff4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0870919e63ac3bab54d7e9a1dd4b45cf38808479` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0873a4e11dfffc0c09be8f5ef5026206b75b9689` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x099a2540848573e94fb1ca0fa420b00acbbc845a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0a9823c5cd84099fde8566a1adf0f2bb41cc6e7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0c6ff30968226be88430eebfcba7f217d81f370b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0c8f8453f7941465739970a221ba1d2d1d49a671` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0dbf62b33a1c8c137b4e5f096ba98617b1fac83d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0dec46bfda8ce29bfa6be4343aa44d9befc71e90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0e025e1d80d633b27e6f4937bd00a0e925d891ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0e12b79a6e5c919f89246ededb2d6413a8890a54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0e3377d5ed4d7ea617db48daec4b0efd4c8cc096` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0e56af317988b4964501e29c0c97e3e21ce9a25a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0f8da6b8f057d773d4d390e4e4bbc22f65ecc5e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0fefd8bf724c049def564b118338d81808d4d6e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x10c8264c0935b3b9870013e057f330ff3e9c56dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x10e5f3dfc81b3e5ef4e648c4454d04e79e1e41e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x12162c3e810393dec01362abf156d7ecf6159528` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x12528b3026cd252e8b4435e22f5615f7f3b8da77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x13b25ae82978d7d65302ed0b4ee0ee0a5cb3a70b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x15eb9d6596ce607ad90f003cf1c2d28340cd5c76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x166816cacb15f80badc5cd0cc24d64c8d1d1cf61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x17414eb5159a082e8d41d243c1601c2944401431` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x17fc62f4bb3e97f6e3035d57494738590fcd1aae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x18617d05ee1692ad7eafee9839459da16097afd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x18e4058491c3f58bc2f747a9e64ca256ed6b318d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x191c7f8b64f0a9faf692b993dc35e5bfd3ce76fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x19c938dd4c8b3273055e508c6efefb0c8447d863` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1a3d8c85d37f21ef4865af2fc5a594b2802641e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1a6167d3dd014338e14bd1992ab71924bce8b994` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1b601a41776c043ffb4cc290b7c309762ceaf472` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1c4a8c3a28b0b3c3a0a6e7650694d9cd5db12de5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1cb8cfea633306c24f347b964a55eb2916237304` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1d6163730343d60dc7bf70341004329808cb57d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1e10f6ca72cce34bb6d285f3c6acd2e0fece85e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1e4662ead79b60f9307802f323431949bf6e5b8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1e8089e87a897a3f0f11dbd7865c2f7937490f82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x217de2c53a0c0e0924d937e1601af56c9eb9a2bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x233371d2b104e1beca2198fa0677c3b8759fb9e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x23fbf1eda8893526ceba6bf8b6e27f760ced9f45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x245ae76eb8bbe8180287e0bb3c3511a7da5d2677` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x245b454233d285956d68fcc85f51a97358923aee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x24e54b4752392f48c0f4b6cc291b10bcaed0c28a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2565ac7a83187292e6717c8b3fbacdbe6682115e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x26a1d7fba480a91b00afe1ec97d535de3c313276` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x27299ce7a0681c4b7644e34407a86d1bb22467fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x28328652bce52544a6b8ac0c808592bbd34dcba2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x289833f252eab98582d62db94bd75ab48ad9cf0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x28a6b5c5023074dc51386ae35c82c5f2dfe203cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2a8758b7257102461bc958279054e372c2b1bde6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2a96a9939b4bf779b23f46b205727d602fe7bd5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2bcf784b2448956068a478f6404d3d9beb04a66a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2c5e82f7249f7985ae54ffa76c5bab5dc49409b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2de6055cd72679f60813ea6031264022bb628222` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2e8c5894972a4621e825a136b65c1280d5715edc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2f239a488f321ba07dd7e442a0f3641072442d10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2f2c605f28de314bc579a7c0fdf85536529e9825` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x300c39bde447fcfc74ec72002961ece77ec1dfe8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x310990e8091b5cf083fa55f500f140cfbb959016` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x31ac3559a5f0632332827127756a3d4ca3a1e941` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x31d6a6b1fe5e1e5009ef3301b4c0e1c6e4944910` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x327e23a4855b6f663a28c5161541d69af8973302` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x32b19916d42d5f1070941fea35f9686c253f0545` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | n/a | `0x3389d29e457345e4f22731292d9c10ddfc78088f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3509a731838771eef8dea570bacdd5521f6573d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3605ec21bce5bd58c09b1e5f3ddd51bf7d6b0acd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x37b557dd3d3552c4daa4da935cf5bf2f3d04c8bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x382281328841e1672304ba169311662d8f6c8174` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x38364001bde529ea1f7670f235aa7d0d9c632ca1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x38611b09f8f2d520c14ea973765c225bf57b9eac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x395abdfd06be0437973b9e3df5618d926755eabe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3be741bbc1cd2ef8894625df25ee00e4be780bce` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | n/a | `0x3c92f99001803a00dad5d800eba5e2f84b1b278e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3d49406edd4d52fb7ffd25485f32e073b529c924` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3d75bba29b30a4ec1e159a49b5bda75de8388829` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3de262d27ad7f03522cd1d2d1a3b4c9a90ca4071` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3e023bd5cd6adeec29e96e7c637d39a10e88f9c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3e2860bfcbc891e8afd8c191a2a05c58ee7a818e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3e4a23db81d1f1268983f0ce78f1a9dc329a5b36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3f7f90e0f782e325401f6323ba93e717f519f382` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3fabbfb300b1e2d7c9b84512fe9d30aedf24c410` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3fd911749fce21a38704b76ffabcb6bef2567f2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3ff30c861649f3ee29082c448d9ce9ed00966c91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x40c0819f7cbf6d2deccc9a88137d53fa2231dcac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x40c9e6e3ba0324e58c0c88c78c8e733a93ac1b61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x40e8852d8229e1e8b53b859b28b1c6fe08354334` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x40ff19e91085aea90e576dd3711e48aceeb98ab6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4142d4c376c6cc168b83999f3c9ef8ff6d757c19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4195bfaeb74ccb49c8ac5d9747c0e2b825630365` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4205ec5fd179a843caa7b0860a8ec7d980013359` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x42660b298985977788515355846f8ab1931aafa7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x436c97b8e346d6120a3ae651358a57c6604fc441` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x440a341bbc9fa86aa60a195e2409a547e48d4c0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x443c5116cdf663eb387e72c688d276e702135c87` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | n/a | `0x45dda9cb7c25131df268515131f647d726f50608` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x45ede0ea5cbbe380c663c7c3015cc7c986669fec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x46967fea75581e018b64169550d9a7f4de57ba8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x46c88f83a688ca4fc04b31d0f8954e1228d4e1fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x478e736496e3b93aeab113b42b430bee31200850` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x483cebbda762eee5b508dbe7179a2af5a179efc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x487f0b13a795025f002f7941a4c0c6746c12cc34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x494a9bc823825cb2dd69740235f30c3891b6a9d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4b7590d928a2de5075d45e00bd245329eac8cd6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4c4db93c938d11be40da79a75f7a80175f7d7f38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4ccb7a69f09abe1a3dfe4fe3d43171107ed25bfc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4cff0a023467949767009039f510ee724281c621` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4edcd2973fe74ce06374fa3b3ee0021be1cfc49b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | n/a | `0x4fdc91d86743c5a47a2739a1abb9f85e589589ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4fe351e48759681df05cd557695012db1e72674d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5047cdcf17aa5a0bb77217497142657b27a1e228` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x526d0c3df5b9a58e52074c6e1bae41aab36810c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x529c0813a26c47f7bb22d9de9be3ef255e46df34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x533c28dcb1158fa05d05583f2b3c346542afd4b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x542d2af7f89a61205f3da2d3d13e29b56bde7b46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5438e60a06c7447432512264fa57e2fed3224b33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x56b186c803d6c96627c73337ca59edffeb6c1aa0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5777ca61f29cac50250a3b136b52328d05dba8c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5826bdde4e50b2dc78f62103e921b3dcd14d4fd7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x59161117086a4c7a9beda16c66e40bdaa1c5a8b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x594302adfab690c55d9349ccd9f21a0dcc8ad310` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5c6eae6a05da5e37c3db8407d1137014f9442193` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5c9a2d22f2fc6f7f3d218d603c34e8e57e9607fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5db6e61b6159b20f068dc15a47df2e5931b14f29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5e2bc8872bace3555c1148ccae623fc9b723e175` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5f4dc3de5b4f1c864d893463f75df5fae48cb940` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5f998eec9cc71106cbf10dd4c5d697935467f8c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x60a47cc34342bc43c308b67d5836d9116a797d6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6190a13e3574e93ec5d24c78931bc51d2afc787f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x624d2f88f3470b9e17c271417da1b00aa2762ef2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x633c4dfd8e11008eb9e245ad4b84cb76f197fd1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x634b084372f88848ac8f8006dc178aa810a58e89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6498c24083a4667aaa53bde365bbc503eef69828` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x64f94cd4657e100c9cf6b8fa43e1761faf546941` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x65537d75bcf9b9c15f0c5359d69f7a296460b34e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x67935f65d1577ced9f4929d3679a157e95c1c02c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x681a977eabbaaf48f2c9666f16c4023936fb9e91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x691e26ab58ff05800e028b0876a41b720b26fc65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6a03b6f7a833a8305a532e7f4fc161f470910058` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6aaa768dc6816026a4502d68a40c185c559727f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6e68f514efac230a4f51936ddcbf87b4257c5e95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6ea4d89474d9410939d429b786208c74853a5b47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6f875693e10ab24c7949009e2f724326ae409162` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6f8f9e75c0285aece30adfe1bcc1955f145d971a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6fd3d3b953ae5ccba69af9380331a3b04926ac49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x714f92d0f22934a827b8ad33a3cea47b0776f9f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x719ad9b50512e35fda60716b856a8dc800c70afd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x71ceaf964b5f8e17d3a1e780bb7761659a36db15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x72484b12719e23115761d5da1646945632979bb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x731aae494718c3e2626b224b01bf5f3c48dead4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x73366fe0aa0ded304479862808e02506fe556a98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x73d320242b95a4cc2e97a075f66422fab9be9c09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x740bac0578ef299d50f2bed15766abd81e7fca13` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | n/a | `0x74d3c85df4dbd03c7c12f7649faa6457610e7604` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x76a359000435982201e415379bda0f70dff40c73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x789931fbfb991ab0dc61d8f03a274d8dd794ae79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x789fa5b773c6f60278e69f96d0efb40349e94a9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7958b7693be15a601cfef8e091c69f18d738e4e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7a0bfe022787bb3db9961617383294de4a84c037` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7ab0b2835f71ad2a31056007f651c897e5ee148a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7b35f11a5cf1779be3877e31b6d05e487760642c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7c66609db07c8983f324098ddc53f03af716aba7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7c91d32a126dff213b368d8527e8be13d641f81f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7e571497e733f00a4f3f5062cb7b8077047dd47e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7f45273fd7c644714825345670414ea649b50b16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7fc4c79cd8e35a7856acc6d652a5442539d0086f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7fdb40efc5086035d7957c15a5cc028f785c9dc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7ff90a2b033fc2703018b725ccdcc9c20fb2abc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x80b014f4eea353eb802647833ac817a90e819429` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x811ec390710bf071a585e32a465d06890a420937` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8123beacb5bca3afa0c9ff71b28549d58cec8176` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8143e3784fcabae2964a25390fa3ac8f219d8eb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x817a7d43f0277ca480ae03ec76fc63a2ec7114ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x81dd0f721ff3cd23f3cfcca10a7dcc06ff3b5505` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x828a123d84e1aecf6d604048a4beaabe14fb0e39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x82a6c4af830caa6c97bb504425f6a66165c2c26e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x84227a76a04289473057bef706646199d7c58c34` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | n/a | `0x847b64f9d3a95e977d157866447a5c0a5dfa0ee5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x854ee989a355fa7517242efd7185a1d250358021` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x85e28b5ef1de29a15bc395285f1fb2ad25bd917d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x86e5ecffb089c371cbf71f1621435275a5f115f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x87bf522c781085bc0e6b53eba155b03e1cef6bad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x882554df528115a743c4537828da8d5b58e52544` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x88b79bfce730bbb74f23ab8940b37b86859caa2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x89d0d032af554689c8a90253eecb9b480afe1c28` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | n/a | `0x8afbfe06da3d035c82c5bc55c82eb3ff05506a20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8b14c81c36645ba1848d69382c4cc11eee5d7296` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8badf35cf94251dc813b5d5c0ac3f9b2de9e5358` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8ce3cac0e6635ce04783709ca3cc4f5fc5304299` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8ebea3b0b20d3e40b5be0e5fcf0e7e00215abecb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8f09e7643322bd9df529e4739b58a7ec226f6763` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x90711d545915f8e99a22bb1f86eb8c0403e3358f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | n/a | `0x90a972d9b53659150f1412e885e27fb7c2e49110` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x921c2121af8d68f397cb2d2a3d24ffc180bcdcb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x921f82e72b0cdf684f09b65cc88a59cd931583be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x934433f205fd6e4bf633efdae1eef59c932b29da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x93aca6b54475443cc95b58061cf6acff7dd33db7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x93ffee768f74208a7b9f2a4426f0f6bcbb1d09de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x953d8c16fd4f22951c2f497669c6869b86b4e60e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x963aefaa094fa87729cce3cb11ff7e8b24b23546` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x97a8130ac8d1125ae6cd53a05d27779a4704f786` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x98a0c8953788ac0f1ff10cbe1799e8d9134ce3a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x98e0eebefd6fb88d54128d605da81cda53e95e63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9aea2de27f978b9964f2f84d0908b6fab5a8caf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9bca13b171449099a1c938c6fef2589e9b655503` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9be99a22be3a702172da3980aa760365ad8cd7fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9c0dbaab74afe7f0262184399e60a9be09e79ad9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9c371ae34509590e10ab98205d2df5936a1ad875` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9d2ef3abb9e7e29a1a5a1ab9fd319987bea949c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9d3a43c111e7b2c6601705d9fcf7a70c95b1dc55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9d4bf1c9d3c49338187f9a71af3292b5f704e2d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9d5fed875fd982ae3538280e5f34c545bed14749` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa070427bf5ba5709f70e98b94cb2f435a242c46c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa0ea34df1edef56d8e1a8479f7cc2ce70d5dffb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa1ef0c3ca3df9926c66e748f24f5807b874fdf4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa209f8b8683bae82b54c6990afd7ea6e23a1d6ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa29d14e33eebe4d9441661ba68f28f906301d566` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | n/a | `0xa2b18457011877db95ed388e5f1b861bc4bcd741` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa302a0b8a499fd0f00449df0a490dede21105955` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa3335c98db4330178af8b390cfa4bf6873b289f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa338e0492b2f944e9f8c0653d3ad1484f2657a37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa361a3c6241b60206402a931cbf8859f1f426f50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa381107552cc14dc05ec92ad76838c3f91a66fa7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa401b14a059a68b42b723e1536c98ca975e77c54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa5043abeb607a370a16cdbd885fb7da6485a4e2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa50d8f101a37b8ea3d3d670c8b4d66bdd2d0989c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa5cb4fc0ebcd8959b3d54b54094af142a8e0e56d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa655d73fe4d06028ac6c457d94a98e551b145beb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa6666759e1a8f61e70825851108fbf864a1b9351` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa7ad38b42e54d68b2968d838ffc15ba24e0f8e25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa85a574217a763936e2034b11df0d74a2fd626ae` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | n/a | `0xa8a6d7c39270ddc658dc53ecbd0500a4c64c9cc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa8b05b6337040c0529919bdb51f6b40a684eb08c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa8bed2b516c448e47602c07bc279798f8f2df8b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa8dce9e1c332c0efb20cd71839e6d3cf57a6abf4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xaa2d440e8d7e200792f3b432c67f2ba944af3839` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xab1c83b2d1703325533324f5529c503b1a03dfaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xaca44abb8b04d07d883202f99fa5e3c53ed57fb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xacb51f1a83922632ca02b25a8164c10748001bde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb070f224d89752f281b8605a54556df0b9447a90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb0ea804a3fff0bc5ffbc13083a6d52b68415a21e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb0ff8fc4484091857732d163bb5795ba26c7511c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb2d8b8d9329f5519cc1d29e5577389d3c11c2804` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb2e3eed25825e8c3946e403b8e8d943976e484e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb3dbea967a5411b8abfb79e4e9d2138b7a7de2e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb4d962106206d88372c542c8ffecacaefb728a60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb54d6f958c3940db47ccfd65125a2a31d9fcb756` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb69d81e85a84b6deb09036669008397774578d92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb6c02600d9956edd226e87bb6f82cea1ead8822f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb77fa460604b9c6435a235d057f7d319ac83cb53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb8cc3cf74aadc5beeb9b7c669433f57347d94d1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbaae4541359594dc2615e3c638c250050270f835` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbaaf11ceda1d1ca9cf01748f8196653c9656a400` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | n/a | `0xbab395136faea31f33f32737218d79e2e92b32c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbaf9327b6564454f4a3364c33efeef032b4b4444` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbb057f61d910915e579cc570d1f72baf770ea3d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbb16e30ac038ee381718393468ad2534d6998603` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbb3ef70953fc3766bec4ab7a9bf05b6e4caf89c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbbd0909eba149652e3a35b667412390734051c5e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | n/a | `0xbc53c5629bb8bb00da575031114fb780581567b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbcfe1d4c71ea92af880df978db4360fc914800e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbd238a35fb47ae22f0cc551f14ffb8e8f04fca21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbd92b4919ae82be8473859295def0e778a626302` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbe23a3aa13038cfc28afd0ece4fde379fe7fbfc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbe25f46dde45e0234c1959066630b19d9e7623ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbe493071a5ad2fe9c75427a15ac903d433ecc9ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbe6fb0ab6302b693368d0e9001faf77ecc6571db` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | n/a | `0xbeed11d5c8c87facbf3f81728543eb8cb6cba939` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc05a7da6c1b95e7646ac041b9caeaf9027e4da97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc0f13a4d2671a5de0006b880f6c42b8a0c04f602` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc1670343d479ddea6e90a108741b8acc23abe847` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc16cb62cdde46f43fd73257b957bf527f07b51c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc1bac77fc17671b63a4299d83e4c7da2932cacb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc3017654b042f829107a57fadfa57088f826dbf0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc3c0313a0046a8ea8b2f9a7ba5d36c9493262b04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc3f16f2a1c4469f931148e88622a45bf60804b68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc4af1c7744131bfe4cf86ca2b1688d7f1f428eaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc54599dadf642b63eed0d8eb01c6400e2affc5b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc5c770ae2efdf0dbc2fb366fb3833dac2a20bf2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc5f9072809610de073492fb7cd36f1ace218d7e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc611192a0c97a2e4845643d22b1fe4dfe36d0dd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc6d82423c6f8b0c406c1c34aee8e988b14d5f685` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc6ef1eb05e4484454afeef5d7ead360deb6f35a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc76f762cedf0f78a439727861628e0fdfe1e70c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc8125b9941fade2e9c86f555464d9d96ccb9e3e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc8b89ce4156b92872d4678a326bc1e96d0be5571` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc9377c86e06e79a5bf302454197bca4aa7c13dcd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xca0472ee08fc5edfde25472e85508a3fa69be39d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xca07a42191db24bdda9bb34237c61f04d54eea71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcac8362649dae2cc0a91e1d200a93e4cef620be5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcb929e087d798382a213f4fab7d3f945b816df14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xccf9e4a944f28da2efdfe9a48304a0e0736fd812` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcd123f069b8f2012c2bdaac94907d30f394b68a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcd16df514a501596a8e24fe1dc9c9be9c9091285` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcd3ee5e7de07fca4d7171140a0d80ab0fed437f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcdfeca7e17dcc97431e55552d5e481776e5d3efd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xce51ca367ac319fb434a5ef91bfb7bc5f60acb0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xce8736ad06101e162d9d98142791a8b0c5677583` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd03f62a1909c5d14d730a55591b63772a5b5c60d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd0ccf213410578df4ec5eb0157234120b30d2f81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd106b538f2a868c28ca1ec7e298c3325e0251d66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd2aa3fc2585999ef9ca66a1b6be18123b5774be7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd3963855b73979b617455fc38a7355563a289948` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd3b1ca24a3f0642ba4ab64090e3f73e4c1949c0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd3dd3b079a03fc16dcadfde72c605d6879ce548d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd44b9e524312f7089cf10d9d54ed1767aa1f152f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd5081a446c6a9a24ff50283fe893b69dfa20df99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd6285f06203d938ab713fa6a315e7d23247dde95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd78bc11ef3256e3ce9dc0df0fa7be9e9afc07f95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd83d9151f491a25aa9901428f598555f2f235d7c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | n/a | `0xd8cd58d478c5beb57e316f3c5d60d4bc3d921293` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd8f8a7a38a1ac326312000d0a0218bf3216bfabb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd8fcaf8bef7d9abf5cfcc91806b3048681ee5eb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd9dbbe179a13f9dd0f9315178121ae01e3575795` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd9ffdb71ebe7496cc440152d43986aae0ab76665` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdb6aab33b605ccc92c91c45855cdf96d8dc051c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdc98232d16f34e3d63f4c52050f8dfa44f7644e9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | n/a | `0xde31f8bfbd8c84b5360cfacca3539b938dd78ae6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xde371b744f67ef9e9b69467ade695372f892c1c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xde6302dfa0ac45b2b1b1a23304469da630b2f59b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdedc34a2b7c192e9498a76d758c68b1ca14192b1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | n/a | `0xdf0fb4e4f928d2dcb76f438575fdd8682386e13c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdf902e25b385c911ae7ea1f8f01e083689659e46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdfb138ba3a6cce675a6f5961323be31ee42e40ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe039d4aa72a0c0d6d0218e650c1ebd6b2675a575` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe0dc07d5ed74741ceeda61284ee56a2a0f7a4cc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe2c89f4bfab45b574942523feaa430c6e193725b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe36f4f2faef8ceb04d8fc5849048d29a7b13f3a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe41b5d02e64b165e77f12b72bf80b56d076000cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe4c733e6fc4d191d8cd8071e2759f3353215b08c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe4da5c3ff08ea80f58b8789e024d9f5141da8b9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe4dc28c48f4425a3175836ed701c3565114c1d75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe56861991a367bdda73fc291b781d372f7b4b892` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe63032a70f6eb617970829fbfa365d7c44bdbbbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe638249af9642cda55a92245525268482ee4c67b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe672868cbf358cdff63e809d5342767b4a9a7092` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe6bc432cf84dbf9d7303ad2ce9e4264ce48fe4e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe74eb858c9dc7d013ce1392468ea1161e8c75fbd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | n/a | `0xe8504e3b854940818c8f3d61dc155fa9919dd10f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe8abfc228fc42d50a50b47c67ad9226349a01405` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xeac3d3110077e043aff80ffde73ec87876c51f2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xeaf35f06410014234bee87980a902c21f78cb426` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xeb3f14f6d3d8f541ba597dbb92a5bff284a05d45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xeb99f173cf7d9a6dc4d889c2ad7103e8383b6efa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xec35e6f084ce365a819e99bcd1f89319e519fdf3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xec5dc23f4fa6aac7fcbbcc2849571b04fcacd75f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xec9207b1fc29633281dbf030d84fe726f461295e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xed0b3a4638ba018035f6e7be79bc036ffa2a297d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xedc89762c435b5edebb4f03c5cb33347252e538d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xef7ccc2cd263c0404d5c4aa310a9f1409bb84196` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xef91a7cbe7f27ede3a500320a05d05e696cad160` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xefb7e6be8356ccc6827799b6a7348ee674a80eae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf17df82d9b4ddcc3dfba889ab6c2622a4bb85957` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf1ae47478cf731788be7d1444dfe351146bde3ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf36f1ea22883855bbfceb954bb18c1e34fad0edb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf3d2048af0f1faaea858b52145e0b4e6bc0f28a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf3f28072f7ff2510843504c69acd07c2c84b2d83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf480b1d3658b8f2642bce6abcd7e98b96b2a8fc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf5724884b6e99257cc003375e6b844bc776183f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf7c72effe3975c25252539685574a5f5bde19423` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf7c7888f110470f452db121c8c267859f3ed25a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf7c7fb4b2c72dc1e118ce9ed38cf1d3d9ea206c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf7c80d12b7fcc33ad2039f95542007878176d8bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf824ea79774e8698e6c6d156c60ab054794c9b18` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | n/a | `0xf9680d99d6c9589e2a93a78a04a279e509205945` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf9d5aac6e5572aefa6bd64108ff86a222f69b64d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfb8a2e8d8c78a5a0453efd0dfb0f0dac4419a514` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfba8b14d9885517cc06f63cf4dd2b655d62f1be0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfc539a559e170f848323e19dfd66007520510085` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfca3f3197cbaf4ef665e6c7b34a336fa818cdfee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfcb1696db54ef93a296e9c68b101ca0d56257fd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfd01371cae8a822544a806ea55ede807abd82f8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfee44e871d8e1090747fdd7fbf62b0be067a17d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xff79eab4c78f6f828da1bcb9c716f642f1d7a502` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xffcfc75a8ba2a77c41e0f85bcf1e7e62a94bb0c7` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 520
- Live contracts: 0
- Unknown liveness contracts: 520
- Source-verified contracts: 134
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: contamination review=6, third party or infra=15, exact address book overlap=18, source verified unclassified=95, unverified unclassified=386

Showing first 200 of 520 contracts. The complete deployer expansion list is in `brief.json`.

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | contamination review | FlashLoanLever<br>`0x88f2803a9e52ca7c26b2f52740facd50d38487b9` | non_address_book | unknown | unknown | verified | n/a | `0x085909388fc0ce9e5761ac8608af8f2f52cb8b89` |
| ethereum | contamination review | FlashSwapLever<br>`0x2db08783f13c4225a1963b2437f0d459a5bcb4d8` | non_address_book | unknown | unknown | verified | n/a | `0x085909388fc0ce9e5761ac8608af8f2f52cb8b89` |
| ethereum | contamination review | ThreeLines0_100<br>`0x482855c43a0869d93c5ca6d9dc9eddf3dae031ea` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x085909388fc0ce9e5761ac8608af8f2f52cb8b89` |
| ethereum | third party or infra | AnchoredViewRelay<br>`0x27fc4059860f3d9758dcc9a871838f06333fc6ed` | external_dependency_or_infra | unknown | unknown | verified | n/a | `0x085909388fc0ce9e5761ac8608af8f2f52cb8b89` |
| ethereum | third party or infra | AnchoredViewRelay<br>`0x610d4dfac3ec32e0be98d18ddb280dacd76a1889` | external_dependency_or_infra | unknown | unknown | verified | n/a | `0x085909388fc0ce9e5761ac8608af8f2f52cb8b89` |
| ethereum | third party or infra | AnchoredViewRelay<br>`0x69f3d75fa1eaa2a46005d566ec784fe9059bb04b` | external_dependency_or_infra | unknown | unknown | verified | n/a | `0x085909388fc0ce9e5761ac8608af8f2f52cb8b89` |
| ethereum | third party or infra | AnchoredViewRelay<br>`0x864991b13691806be077e7ca9ef566fe7762f908` | external_dependency_or_infra | unknown | unknown | verified | n/a | `0x085909388fc0ce9e5761ac8608af8f2f52cb8b89` |
| ethereum | third party or infra | AnchoredViewRelay<br>`0x93a3411c9518d9c85054693137c87c5f14e7ecf9` | external_dependency_or_infra | unknown | unknown | verified | n/a | `0x085909388fc0ce9e5761ac8608af8f2f52cb8b89` |
| ethereum | third party or infra | AnchoredViewRelay<br>`0xef12fa3183362506a2dd0ff1cf06b2f4156e751e` | external_dependency_or_infra | unknown | unknown | verified | n/a | `0x085909388fc0ce9e5761ac8608af8f2f52cb8b89` |
| ethereum | third party or infra | AnchoredViewRelay<br>`0xf5e0e2827f60580304522e2c38177dfec7a428a4` | external_dependency_or_infra | unknown | unknown | verified | n/a | `0x085909388fc0ce9e5761ac8608af8f2f52cb8b89` |
| ethereum | exact address book overlap | CappedERC4626<br>`0x09fd32c702117bb1deaa2dd43e2bc8a63a831c7a` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x085909388fc0ce9e5761ac8608af8f2f52cb8b89` |
| ethereum | exact address book overlap | CappedGovToken<br>`0x9f86bf2c380d3c63177e6104320fd3d1dcae88da` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x085909388fc0ce9e5761ac8608af8f2f52cb8b89` |
| ethereum | exact address book overlap | TransparentUpgradeableProxy<br>`0x05498574bd0fa99eecb01e1241661e7ee58f8a85` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x085909388fc0ce9e5761ac8608af8f2f52cb8b89` |
| ethereum | exact address book overlap | TransparentUpgradeableProxy<br>`0x64ea012919fd9e53bdccdc0fc89201f484731f41` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x085909388fc0ce9e5761ac8608af8f2f52cb8b89` |
| ethereum | exact address book overlap | TransparentUpgradeableProxy<br>`0x7c1caa71943ef43e9b203b02678000755a4ecde9` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x085909388fc0ce9e5761ac8608af8f2f52cb8b89` |
| ethereum | exact address book overlap | TransparentUpgradeableProxy<br>`0x99bd1f28a5a7fecbe39a53463a916794be798fc3` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x085909388fc0ce9e5761ac8608af8f2f52cb8b89` |
| ethereum | exact address book overlap | TransparentUpgradeableProxy<br>`0x9d878ec06f628e883d2f9f1d793adbcfd52822a8` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x085909388fc0ce9e5761ac8608af8f2f52cb8b89` |
| ethereum | exact address book overlap | TransparentUpgradeableProxy<br>`0xd3bd7a8777c042de830965de1c1bcc9784135dd2` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x085909388fc0ce9e5761ac8608af8f2f52cb8b89` |
| ethereum | exact address book overlap | TransparentUpgradeableProxy<br>`0xddb3bcfe0304c970e263bf1366db8ed4de0e357a` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x085909388fc0ce9e5761ac8608af8f2f52cb8b89` |
| ethereum | exact address book overlap | TransparentUpgradeableProxy<br>`0xdf623240ec300fd9e2b7780b34dc2f417c0ab6d2` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x085909388fc0ce9e5761ac8608af8f2f52cb8b89` |
| ethereum | source verified unclassified | AnchoredViewRelay<br>`0x2338457f771cf7ca7889aad848eeba18807cb206` | non_address_book | unknown | unknown | verified | n/a | `0x085909388fc0ce9e5761ac8608af8f2f52cb8b89` |
| ethereum | source verified unclassified | AnchoredViewRelay<br>`0x8415011818c398dc40258f699a7cb58c85953f43` | non_address_book | unknown | unknown | verified | n/a | `0x085909388fc0ce9e5761ac8608af8f2f52cb8b89` |
| ethereum | source verified unclassified | AnchoredViewRelay<br>`0x8d63e151e3b6b0828bebd212400ab9aaafdef312` | non_address_book | unknown | unknown | verified | n/a | `0x085909388fc0ce9e5761ac8608af8f2f52cb8b89` |
| ethereum | source verified unclassified | AnchoredViewRelay<br>`0x924854279824c9c05da81d3cd1fbde30ea3c71b6` | non_address_book | unknown | unknown | verified | n/a | `0x085909388fc0ce9e5761ac8608af8f2f52cb8b89` |
| ethereum | source verified unclassified | AnchoredViewRelay<br>`0xae7be6fe233bd33f9f9149050932cba728793fdd` | non_address_book | unknown | unknown | verified | n/a | `0x085909388fc0ce9e5761ac8608af8f2f52cb8b89` |
| ethereum | source verified unclassified | AnchoredViewRelay<br>`0xcf2fcd9b87113139e809d5f9ea6f4d571bb1c12a` | non_address_book | unknown | unknown | verified | n/a | `0x085909388fc0ce9e5761ac8608af8f2f52cb8b89` |
| ethereum | source verified unclassified | AnchoredViewRelay<br>`0xd3ced54e5f5d950b1b8711a178e4eab2de5db3ec` | non_address_book | unknown | unknown | verified | n/a | `0x085909388fc0ce9e5761ac8608af8f2f52cb8b89` |
| ethereum | source verified unclassified | BPTstablePoolOracle<br>`0xcee78ce44e98d16f59c775494be24e0d2cff19a4` | non_address_book | unknown | unknown | verified | n/a | `0x085909388fc0ce9e5761ac8608af8f2f52cb8b89` |
| ethereum | source verified unclassified | BPTstablePoolOracle<br>`0xd26567e51be02b3c835fd57b30d461a029e3986b` | non_address_book | unknown | unknown | verified | n/a | `0x085909388fc0ce9e5761ac8608af8f2f52cb8b89` |
| ethereum | source verified unclassified | BPTstablePoolOracle<br>`0xd6b002316d4e13d2b7eaff3fa5fc6c20d2cef4be` | non_address_book | unknown | unknown | verified | n/a | `0x085909388fc0ce9e5761ac8608af8f2f52cb8b89` |
| ethereum | source verified unclassified | CappedBptToken<br>`0x0cdb61ab468a2f89d1636c95b32d88c0ea6ef826` | non_address_book | unknown | unknown | verified | n/a | `0x085909388fc0ce9e5761ac8608af8f2f52cb8b89` |
| ethereum | source verified unclassified | CappedGovToken<br>`0x0cef7fcc8d24782c21b08694526600e190a07e0a` | non_address_book | unknown | unknown | verified | n/a | `0x085909388fc0ce9e5761ac8608af8f2f52cb8b89` |
| ethereum | source verified unclassified | CappedGovToken<br>`0x4f23dcc38438fb01960aff49daeeeef7242df4ff` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x085909388fc0ce9e5761ac8608af8f2f52cb8b89` |
| ethereum | source verified unclassified | CappedGovToken<br>`0x5a6752f16b81a8dfed84c785b49693573e5baf1a` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x085909388fc0ce9e5761ac8608af8f2f52cb8b89` |
| ethereum | source verified unclassified | CappedGovToken<br>`0xb9318f3ecea2fc328b9a5165bf19204930236baf` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x085909388fc0ce9e5761ac8608af8f2f52cb8b89` |
| ethereum | source verified unclassified | CappedGovToken<br>`0xb9cb624d4b21e0239bb149b1b1f1992a0eb351b8` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x085909388fc0ce9e5761ac8608af8f2f52cb8b89` |
| ethereum | source verified unclassified | CappedGovToken<br>`0xbdcf0bb40eb8642f907133bdb5fcc681d81f0651` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x085909388fc0ce9e5761ac8608af8f2f52cb8b89` |
| ethereum | source verified unclassified | CappedGovToken<br>`0xdc94d04a71d01469aab28ae3ae7cf39ecd38765a` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x085909388fc0ce9e5761ac8608af8f2f52cb8b89` |
| ethereum | source verified unclassified | CappedGovToken<br>`0xe565e118e75304dd3cf83dff409c90034b7ea18a` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x085909388fc0ce9e5761ac8608af8f2f52cb8b89` |
| ethereum | source verified unclassified | CappedGovToken<br>`0xf5b8ee284dc7345e861f6353490ec1591cac5df8` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x085909388fc0ce9e5761ac8608af8f2f52cb8b89` |
| ethereum | source verified unclassified | CappedGovToken<br>`0xf8243ecf8f734452b184a1df3ad3cd92fc93b58a` | non_address_book | unknown | unknown | verified | n/a | `0x085909388fc0ce9e5761ac8608af8f2f52cb8b89` |
| ethereum | source verified unclassified | CappedMkrToken<br>`0x99904e5369c551e0a9824e9e95141c46ae2e1b0f` | non_address_book | unknown | unknown | verified | n/a | `0x085909388fc0ce9e5761ac8608af8f2f52cb8b89` |
| ethereum | source verified unclassified | CappedMkrToken<br>`0xe4fd7f0f9d0749dd4863fb6827db6f0b06368f01` | non_address_book | unknown | unknown | verified | n/a | `0x085909388fc0ce9e5761ac8608af8f2f52cb8b89` |
| ethereum | source verified unclassified | CHI_Oracle<br>`0x9aa2ccb26686dd7698778599cd0f4425a5231e18` | non_address_book | unknown | unknown | verified | n/a | `0x085909388fc0ce9e5761ac8608af8f2f52cb8b89` |
| ethereum | source verified unclassified | FlashSwapLever<br>`0x696607447225f6690883e718fd0db0abaf36b6e2` | non_address_book | unknown | unknown | verified | n/a | `0x085909388fc0ce9e5761ac8608af8f2f52cb8b89` |
| ethereum | source verified unclassified | InterestProtocolTokenDelegate<br>`0x384542d720a765ae399cfddf079cbe515731f044` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x085909388fc0ce9e5761ac8608af8f2f52cb8b89` |
| ethereum | source verified unclassified | InterestProtocolTokenDelegate<br>`0x387eedd357836a73ecef07067e6360a95c254b17` | non_address_book | unknown | unknown | verified | n/a | `0x085909388fc0ce9e5761ac8608af8f2f52cb8b89` |
| ethereum | source verified unclassified | Liquidator<br>`0x1cc72efbdfb08803bdda911ad895a861e1f91c78` | non_address_book | unknown | unknown | verified | n/a | `0x085909388fc0ce9e5761ac8608af8f2f52cb8b89` |
| ethereum | source verified unclassified | Liquidator<br>`0x384eab89048520e35309e48ea933d845c495a613` | non_address_book | unknown | unknown | verified | n/a | `0x085909388fc0ce9e5761ac8608af8f2f52cb8b89` |
| ethereum | source verified unclassified | Liquidator<br>`0x48fa7528bfd6164ddf09df0ed22451cf59c84130` | non_address_book | unknown | unknown | verified | n/a | `0x085909388fc0ce9e5761ac8608af8f2f52cb8b89` |
| ethereum | source verified unclassified | MasterKeeper<br>`0x15518aa548248d97479ca3ae2358266f12b2a61a` | non_address_book | unknown | unknown | verified | n/a | `0x085909388fc0ce9e5761ac8608af8f2f52cb8b89` |
| ethereum | source verified unclassified | MKRVotingVaultController<br>`0x7b6160a0c3963903c2a050c6637009e2c1c60137` | non_address_book | unknown | unknown | verified | n/a | `0x085909388fc0ce9e5761ac8608af8f2f52cb8b89` |
| ethereum | source verified unclassified | MKRVotingVaultController<br>`0xeba2255b1e8bb9a5fcd456cf115a467e61008d73` | non_address_book | unknown | unknown | verified | n/a | `0x085909388fc0ce9e5761ac8608af8f2f52cb8b89` |
| ethereum | source verified unclassified | Portico<br>`0x0fe9a1cd02b6633a2c2084ff87e3ee75d3e2081d` | non_address_book | unknown | unknown | verified | n/a | `0x085909388fc0ce9e5761ac8608af8f2f52cb8b89` |
| ethereum | source verified unclassified | Portico<br>`0x48b6101128c0ed1e208b7c910e60542a2ee6f476` | non_address_book | unknown | unknown | verified | n/a | `0x085909388fc0ce9e5761ac8608af8f2f52cb8b89` |
| ethereum | source verified unclassified | Portico<br>`0x4db1683d60e0a933a9a477a19fa32f472bb9d06e` | non_address_book | unknown | unknown | verified | n/a | `0x085909388fc0ce9e5761ac8608af8f2f52cb8b89` |
| ethereum | source verified unclassified | Portico<br>`0xd8e1465908103ed5fd28e381920575fb09beb264` | non_address_book | unknown | unknown | verified | n/a | `0x085909388fc0ce9e5761ac8608af8f2f52cb8b89` |
| ethereum | source verified unclassified | Portico<br>`0xf4c22e13414bcc2fab827d62de33c05e9b3955f7` | non_address_book | unknown | unknown | verified | n/a | `0x085909388fc0ce9e5761ac8608af8f2f52cb8b89` |
| ethereum | source verified unclassified | TransparentUpgradeableProxy<br>`0x2c52ee10bd58efa20fc6ee418bf9085639e8247e` | non_address_book | unknown | unknown | verified | n/a | `0x085909388fc0ce9e5761ac8608af8f2f52cb8b89` |
| ethereum | source verified unclassified | TransparentUpgradeableProxy<br>`0x491397f7eb6f5d9b82b15cecabff835ba31f217f` | non_address_book | unknown | unknown | verified | n/a | `0x085909388fc0ce9e5761ac8608af8f2f52cb8b89` |
| ethereum | source verified unclassified | TransparentUpgradeableProxy<br>`0x5f39ad3df3ed9cf383eeee45218c33da86479165` | non_address_book | unknown | unknown | verified | n/a | `0x085909388fc0ce9e5761ac8608af8f2f52cb8b89` |
| ethereum | source verified unclassified | TransparentUpgradeableProxy<br>`0x6b68c5708daffd0393acc6a8cc92f8c2146346ae` | non_address_book | unknown | unknown | verified | n/a | `0x085909388fc0ce9e5761ac8608af8f2f52cb8b89` |
| ethereum | source verified unclassified | TransparentUpgradeableProxy<br>`0x739d346421a42beb13fd8d560dd2f42250d4ac88` | non_address_book | unknown | unknown | verified | n/a | `0x085909388fc0ce9e5761ac8608af8f2f52cb8b89` |
| ethereum | source verified unclassified | TransparentUpgradeableProxy<br>`0x73ccb09737eda66b66158f140834d68150c4c04b` | non_address_book | unknown | unknown | verified | n/a | `0x085909388fc0ce9e5761ac8608af8f2f52cb8b89` |
| ethereum | source verified unclassified | TransparentUpgradeableProxy<br>`0x7d3cd037ae7efa9ebed7432c11c9dfa73519303d` | non_address_book | unknown | unknown | verified | n/a | `0x085909388fc0ce9e5761ac8608af8f2f52cb8b89` |
| ethereum | source verified unclassified | TransparentUpgradeableProxy<br>`0xbb5578c08bc08c15ace5cd09c6683ccccb2a9148` | non_address_book | unknown | unknown | verified | n/a | `0x085909388fc0ce9e5761ac8608af8f2f52cb8b89` |
| ethereum | source verified unclassified | TransparentUpgradeableProxy<br>`0xddad1d1127a7042f43cfc209b954cfc37f203897` | non_address_book | unknown | unknown | verified | n/a | `0x085909388fc0ce9e5761ac8608af8f2f52cb8b89` |
| ethereum | source verified unclassified | TransparentUpgradeableProxy<br>`0xe2c1d2e7aa4008081caafc350a040246b9ebb579` | non_address_book | unknown | unknown | verified | n/a | `0x085909388fc0ce9e5761ac8608af8f2f52cb8b89` |
| ethereum | source verified unclassified | VaultController<br>`0x9bdb5575e24eeb2dca7ba6ce367d609bdeb38246` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x085909388fc0ce9e5761ac8608af8f2f52cb8b89` |
| ethereum | source verified unclassified | VotingVaultController<br>`0x17b7bd832666ac28a6ad35a93d4eff4eb9a07a17` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x085909388fc0ce9e5761ac8608af8f2f52cb8b89` |
| ethereum | source verified unclassified | wOETH_ORACLE<br>`0x7b518e0c898c0bcd80e8e5b5e8d7735007012834` | non_address_book | unknown | unknown | verified | n/a | `0x085909388fc0ce9e5761ac8608af8f2f52cb8b89` |
| ethereum | source verified unclassified | wstETHRelay<br>`0x0e2a18163e6cb2eb11568fad35e42de4ee67ea9a` | non_address_book | unknown | unknown | verified | n/a | `0x085909388fc0ce9e5761ac8608af8f2f52cb8b89` |
| ethereum | source verified unclassified | wstETHRelay<br>`0x47cbd328b185ea8fc61ead9a32d0edd79067b577` | non_address_book | unknown | unknown | verified | n/a | `0x085909388fc0ce9e5761ac8608af8f2f52cb8b89` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x107da33fdfa0661360d91e134fa5f5d4bec25e4d` | non_address_book | unknown | unknown | unverified | n/a | `0x085909388fc0ce9e5761ac8608af8f2f52cb8b89` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x78fcf430d81dd51b367b059ea2b9ff69ffa8bd74` | non_address_book | unknown | unknown | unverified | n/a | `0x085909388fc0ce9e5761ac8608af8f2f52cb8b89` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa490ce00e4032a12befa2d3b35dee7333becfe54` | non_address_book | unknown | unknown | unverified | n/a | `0x085909388fc0ce9e5761ac8608af8f2f52cb8b89` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd652db177583729bdffbbb42bc4342c7f5557e6f` | non_address_book | unknown | unknown | unverified | n/a | `0x085909388fc0ce9e5761ac8608af8f2f52cb8b89` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x090d4613473dee047c3f2706764f49e0821d256e` | non_address_book | unknown | unknown | unverified | n/a | `0x41653c7d61609d856f29355e404f310ec4142cfb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x18e433c7bf8a2e1d0197ce5d8f9afada1a771360` | non_address_book | unknown | unknown | unverified | n/a | `0x41653c7d61609d856f29355e404f310ec4142cfb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1a9c8182c09f50c8318d769245bea52c32be35bc` | non_address_book | unknown | unknown | unverified | n/a | `0x41653c7d61609d856f29355e404f310ec4142cfb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3032ab3fa8c01d786d29dade018d7f2017918e12` | non_address_book | unknown | unknown | unverified | n/a | `0x41653c7d61609d856f29355e404f310ec4142cfb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3d30b1ab88d487b0f3061f40de76845bec3f1e94` | non_address_book | unknown | unknown | unverified | n/a | `0x41653c7d61609d856f29355e404f310ec4142cfb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4750c43867ef5f89869132eccf19b9b6c4286e1a` | non_address_book | unknown | unknown | unverified | n/a | `0x41653c7d61609d856f29355e404f310ec4142cfb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4b4e140d1f131fdad6fb59c13af796fd194e4135` | non_address_book | unknown | unknown | unverified | n/a | `0x41653c7d61609d856f29355e404f310ec4142cfb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5e4be8bc9637f0eaa1a755019e06a68ce081d58f` | non_address_book | unknown | unknown | unverified | n/a | `0x41653c7d61609d856f29355e404f310ec4142cfb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdaf819c2437a82f9e01f6586207ebf961a7f0970` | non_address_book | unknown | unknown | unverified | n/a | `0x41653c7d61609d856f29355e404f310ec4142cfb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe3953d9d317b834592ab58ab2c7a6ad22b54075d` | non_address_book | unknown | unknown | unverified | n/a | `0x41653c7d61609d856f29355e404f310ec4142cfb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3e8640574aa764763291ed733672d3a105107ac5` | non_address_book | unknown | unknown | unverified | n/a | `0x8b41783ad99fcbeb8d575fa7a7b5a04fa0b8d80b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xca06411bd7a7296d7dbdd0050dfc846e95febeb7` | non_address_book | unknown | unknown | unverified | n/a | `0x8b41783ad99fcbeb8d575fa7a7b5a04fa0b8d80b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe5a5f138005e19a3e6d0fe68b039397eeef2322b` | non_address_book | unknown | unknown | unverified | n/a | `0x8b41783ad99fcbeb8d575fa7a7b5a04fa0b8d80b` |
| ethereum | contamination review | Liquidator<br>`0x0f131c38a552142d5753363090f6f7c4e01ab0e4` | non_address_book | unknown | unknown | verified | n/a | `0x958892b4a0512b28aaac890fc938868bbd42f064` |
| ethereum | contamination review | ThreeLines0_100<br>`0x16ac44b1e161c735d7e372169d3573d920a23906` | non_address_book | unknown | unknown | verified | n/a | `0x958892b4a0512b28aaac890fc938868bbd42f064` |
| ethereum | contamination review | WavePool<br>`0x5a4396a2fe5fd36c6528a441d7a97c3b0f3e8aee` | non_address_book | unknown | unknown | verified | n/a | `0x958892b4a0512b28aaac890fc938868bbd42f064` |
| ethereum | third party or infra | AnchoredViewRelay<br>`0x65da327b1740d00ff7b366a4fd8f33830a2f03a2` | external_dependency_or_infra | unknown | unknown | verified | n/a | `0x958892b4a0512b28aaac890fc938868bbd42f064` |
| ethereum | third party or infra | AnchoredViewRelay<br>`0x6db54416cbb28c6a78f606947df53e83dd69eb70` | external_dependency_or_infra | unknown | unknown | verified | n/a | `0x958892b4a0512b28aaac890fc938868bbd42f064` |
| ethereum | third party or infra | AnchoredViewRelay<br>`0x73052741d8be063b086c4b7efe084b0cee50677a` | external_dependency_or_infra | unknown | unknown | verified | n/a | `0x958892b4a0512b28aaac890fc938868bbd42f064` |
| ethereum | third party or infra | AnchoredViewRelay<br>`0x8bfe7ae486250dbf2901843cc73b91843c2879de` | external_dependency_or_infra | unknown | unknown | verified | n/a | `0x958892b4a0512b28aaac890fc938868bbd42f064` |
| ethereum | third party or infra | AnchoredViewRelay<br>`0x8e7d39560b15b2d29e01b2502252c4b5f26f5326` | external_dependency_or_infra | unknown | unknown | verified | n/a | `0x958892b4a0512b28aaac890fc938868bbd42f064` |
| ethereum | third party or infra | AnchoredViewRelay<br>`0xce554405b9a257ed00a4e0f114ff12ab832b4e3b` | external_dependency_or_infra | unknown | unknown | verified | n/a | `0x958892b4a0512b28aaac890fc938868bbd42f064` |
| ethereum | third party or infra | StEthOracleRelay<br>`0xaa2639c9dcf71547e585439e8744128ed9832fe8` | external_dependency_or_infra | unknown | unknown | verified | n/a | `0x958892b4a0512b28aaac890fc938868bbd42f064` |
| ethereum | third party or infra | TransparentUpgradeableProxy<br>`0x2a54ba2964c8cd459dc568853f79813a60761b58` | external_dependency_or_infra | unknown | unknown | verified | n/a | `0x958892b4a0512b28aaac890fc938868bbd42f064` |
| ethereum | exact address book overlap | GovernorCharlieDelegator<br>`0x266d1020a84b9e8b0ed320831838152075f8c4ca` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x958892b4a0512b28aaac890fc938868bbd42f064` |
| ethereum | exact address book overlap | InterestProtocolToken<br>`0xd909c5862cdb164adb949d92622082f0092efc3d` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x958892b4a0512b28aaac890fc938868bbd42f064` |
| ethereum | exact address book overlap | OracleMaster<br>`0xf4818813045e954f5dc55a40c9b60def0ba3d477` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x958892b4a0512b28aaac890fc938868bbd42f064` |
| ethereum | exact address book overlap | ProxyAdmin<br>`0x3d9d8c08dc16aa104b5b24abdd1ad857e2c0d8c5` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x958892b4a0512b28aaac890fc938868bbd42f064` |
| ethereum | exact address book overlap | TransparentUpgradeableProxy<br>`0x4aae9823fb4c70490f1d802fc697f3fff8d5cbe3` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x958892b4a0512b28aaac890fc938868bbd42f064` |
| ethereum | exact address book overlap | TransparentUpgradeableProxy<br>`0x5ac39ed42e14cf330a864d7d1b82690b4d1b9e61` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x958892b4a0512b28aaac890fc938868bbd42f064` |
| ethereum | exact address book overlap | TransparentUpgradeableProxy<br>`0xae49ddca05fe891c6a5492ed52d739ec1328cbe2` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x958892b4a0512b28aaac890fc938868bbd42f064` |
| ethereum | exact address book overlap | TransparentUpgradeableProxy<br>`0xfb42f5afb722d2b01548f77c31ac05bf80e03381` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x958892b4a0512b28aaac890fc938868bbd42f064` |
| ethereum | source verified unclassified | AnchoredViewRelay<br>`0x0f2f7aa507d153ac04431a617840d1ff28a960ac` | non_address_book | unknown | unknown | verified | n/a | `0x958892b4a0512b28aaac890fc938868bbd42f064` |
| ethereum | source verified unclassified | AnchoredViewRelay<br>`0x705a8a3e6f179cd9f32e60fa75c302188a97b378` | non_address_book | unknown | unknown | verified | n/a | `0x958892b4a0512b28aaac890fc938868bbd42f064` |
| ethereum | source verified unclassified | AnchoredViewRelay<br>`0x8ed31d7ff5d2ffbf17fe3118a61123f50adb523a` | non_address_book | unknown | unknown | verified | n/a | `0x958892b4a0512b28aaac890fc938868bbd42f064` |
| ethereum | source verified unclassified | AnchoredViewRelay<br>`0x92353938a5fa4a02bea4ff7561280b12293bb195` | non_address_book | unknown | unknown | verified | n/a | `0x958892b4a0512b28aaac890fc938868bbd42f064` |
| ethereum | source verified unclassified | AnchoredViewRelay<br>`0x93cef8012460764d201b654fea85abecb28919fd` | non_address_book | unknown | unknown | verified | n/a | `0x958892b4a0512b28aaac890fc938868bbd42f064` |
| ethereum | source verified unclassified | AnchoredViewRelay<br>`0xc91814dde87f7dddd9b808b3b6572678b3df48d2` | non_address_book | unknown | unknown | verified | n/a | `0x958892b4a0512b28aaac890fc938868bbd42f064` |
| ethereum | source verified unclassified | AnchoredViewRelay<br>`0xde67fe89fbac308339a317905c9e61ddbdd8832e` | non_address_book | unknown | unknown | verified | n/a | `0x958892b4a0512b28aaac890fc938868bbd42f064` |
| ethereum | source verified unclassified | AnchoredViewRelay<br>`0xf6f296542fb3870b6dcc6b93a18f8b762f16aecf` | non_address_book | unknown | unknown | verified | n/a | `0x958892b4a0512b28aaac890fc938868bbd42f064` |
| ethereum | source verified unclassified | CappedGovToken<br>`0x0451f2d1d1b651dec8bfaa814e9aefdb6f6dfca7` | non_address_book | unknown | unknown | verified | n/a | `0x958892b4a0512b28aaac890fc938868bbd42f064` |
| ethereum | source verified unclassified | CappedGovToken<br>`0x0f0767402a2d4399f2649c885ed3bf47099b461b` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x958892b4a0512b28aaac890fc938868bbd42f064` |
| ethereum | source verified unclassified | CappedGovToken<br>`0x361093a2221afe4619e4124b22d6f2146d8109aa` | non_address_book | unknown | unknown | verified | n/a | `0x958892b4a0512b28aaac890fc938868bbd42f064` |
| ethereum | source verified unclassified | CappedGovToken<br>`0x6ebf5bb031ac1edf004b51ea8cbad2c5a2779cf2` | non_address_book | unknown | unknown | verified | n/a | `0x958892b4a0512b28aaac890fc938868bbd42f064` |
| ethereum | source verified unclassified | CappedGovToken<br>`0xf6dcb35f91f740236803635eeca5825cb537e7c0` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x958892b4a0512b28aaac890fc938868bbd42f064` |
| ethereum | source verified unclassified | EtherlandsToken<br>`0xba0191da85b97ab9d7a334a06dc1623967a526f5` | non_address_book | unknown | unknown | verified | n/a | `0x958892b4a0512b28aaac890fc938868bbd42f064` |
| ethereum | source verified unclassified | GovernorCharlieDelegate<br>`0x6b91a0ba78acc4a8c7919f96c181a895d5b31563` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x958892b4a0512b28aaac890fc938868bbd42f064` |
| ethereum | source verified unclassified | GovernorCharlieDelegate<br>`0x8b3d32cf2bb4d0d16656f4c0b04fa546274f1545` | non_address_book | unknown | unknown | verified | n/a | `0x958892b4a0512b28aaac890fc938868bbd42f064` |
| ethereum | source verified unclassified | GovernorCharlieDelegate<br>`0xdf352c2fcb3cbfdbba619090e2a1deb9ac534a29` | non_address_book | unknown | unknown | verified | n/a | `0x958892b4a0512b28aaac890fc938868bbd42f064` |
| ethereum | source verified unclassified | GovernorCharlieDelegate<br>`0xed6a213928db81a3a60bce25aaf199dbaf01dd25` | non_address_book | unknown | unknown | verified | n/a | `0x958892b4a0512b28aaac890fc938868bbd42f064` |
| ethereum | source verified unclassified | GovernorCharlieDelegate<br>`0xf082066e2f023b57617f2167c1f2a5d93eab65a8` | non_address_book | unknown | unknown | verified | n/a | `0x958892b4a0512b28aaac890fc938868bbd42f064` |
| ethereum | source verified unclassified | InterestProtocolToken<br>`0xaf239a6fab6a873c779f3f33dbd34104287b93e1` | non_address_book | unknown | unknown | verified | n/a | `0x958892b4a0512b28aaac890fc938868bbd42f064` |
| ethereum | source verified unclassified | InterestProtocolTokenDelegate<br>`0x35bb90c0b96ddb4b93ddf42afedd5204e91a1a10` | non_address_book | unknown | unknown | verified | n/a | `0x958892b4a0512b28aaac890fc938868bbd42f064` |
| ethereum | source verified unclassified | Liquidator<br>`0x285b942297191a7d988ddfe430e6a0945943da08` | non_address_book | unknown | unknown | verified | n/a | `0x958892b4a0512b28aaac890fc938868bbd42f064` |
| ethereum | source verified unclassified | Liquidator<br>`0xcc951b45ddb4c354d9df4388b0a1d3204fca80d0` | non_address_book | unknown | unknown | verified | n/a | `0x958892b4a0512b28aaac890fc938868bbd42f064` |
| ethereum | source verified unclassified | MerkleRedeem<br>`0x5757fcbb8367917ffbd1cacd2dd5a9fa0f204a70` | non_address_book | unknown | unknown | verified | n/a | `0x958892b4a0512b28aaac890fc938868bbd42f064` |
| ethereum | source verified unclassified | MerkleRedeem<br>`0x91a1fb8eeaeb0e05629719938b03ee3c32348cf7` | non_address_book | unknown | unknown | verified | n/a | `0x958892b4a0512b28aaac890fc938868bbd42f064` |
| ethereum | source verified unclassified | MerkleRedeem<br>`0xda0ec83cb108a9aaf660654a81f380d541e16bef` | non_address_book | unknown | unknown | verified | n/a | `0x958892b4a0512b28aaac890fc938868bbd42f064` |
| ethereum | source verified unclassified | ProxyAdmin<br>`0x0c3ff7fbeaa7484cdfb7b0632790a67b95e623d3` | non_address_book | unknown | unknown | verified | n/a | `0x958892b4a0512b28aaac890fc938868bbd42f064` |
| ethereum | source verified unclassified | StEthOracleRelay<br>`0x7bb0e115668a9094cf8b3cea4b274daea4c1e8cd` | non_address_book | unknown | unknown | verified | n/a | `0x958892b4a0512b28aaac890fc938868bbd42f064` |
| ethereum | source verified unclassified | ThreeLines0_100<br>`0x8ef82c4c48faad513d157a86433cd7d9397ea278` | non_address_book | unknown | unknown | verified | n/a | `0x958892b4a0512b28aaac890fc938868bbd42f064` |
| ethereum | source verified unclassified | TransparentUpgradeableProxy<br>`0x42b4d79ae23165541f24c4cd52494fe8516b3c80` | non_address_book | unknown | unknown | verified | n/a | `0x958892b4a0512b28aaac890fc938868bbd42f064` |
| ethereum | source verified unclassified | TransparentUpgradeableProxy<br>`0x7d60fc2f2219537c2605b827fb08f00d8ead44ae` | non_address_book | unknown | unknown | verified | n/a | `0x958892b4a0512b28aaac890fc938868bbd42f064` |
| ethereum | source verified unclassified | USDI<br>`0x4a589d70984bac3c05ec39629222005a44bd0172` | non_address_book | unknown | unknown | verified | n/a | `0x958892b4a0512b28aaac890fc938868bbd42f064` |
| ethereum | source verified unclassified | USDI<br>`0xedfec0cb12b39ea11e477e722e06d9cd99a9d57a` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x958892b4a0512b28aaac890fc938868bbd42f064` |
| ethereum | source verified unclassified | VaultController<br>`0x0bd408f2b32ca80c54ccdd21acf38bba3d83dfd8` | non_address_book | unknown | unknown | verified | n/a | `0x958892b4a0512b28aaac890fc938868bbd42f064` |
| ethereum | source verified unclassified | VaultController<br>`0x2f483ee258d554fae69a30ae788f299a13aed14d` | non_address_book | unknown | unknown | verified | n/a | `0x958892b4a0512b28aaac890fc938868bbd42f064` |
| ethereum | source verified unclassified | VaultController<br>`0x8a714b29c53911230a303d1e7d750a6665df5716` | non_address_book | unknown | unknown | verified | n/a | `0x958892b4a0512b28aaac890fc938868bbd42f064` |
| ethereum | source verified unclassified | VaultController<br>`0xb5afbb38f00487f2d792b2a18765db9a3019dedf` | non_address_book | unknown | unknown | verified | n/a | `0x958892b4a0512b28aaac890fc938868bbd42f064` |
| ethereum | source verified unclassified | VotingVaultController<br>`0xb800ca12a3e37c381e92daa0a2910d70a267da6e` | non_address_book | unknown | unknown | verified | n/a | `0x958892b4a0512b28aaac890fc938868bbd42f064` |
| ethereum | source verified unclassified | VotingVaultController<br>`0xc12bdf37a43f693949f4a3dafddb604a069ec21b` | non_address_book | unknown | unknown | verified | n/a | `0x958892b4a0512b28aaac890fc938868bbd42f064` |
| ethereum | source verified unclassified | VotingVaultController<br>`0xee0b467eab118171d19667fb963f1ec229feeade` | non_address_book | unknown | unknown | verified | n/a | `0x958892b4a0512b28aaac890fc938868bbd42f064` |
| ethereum | source verified unclassified | WavePool<br>`0x9fbbf87baa6ec6702742022daa08cc44fddf341d` | non_address_book | unknown | unknown | verified | n/a | `0x958892b4a0512b28aaac890fc938868bbd42f064` |
| ethereum | source verified unclassified | WavePool<br>`0xab1b815a8a2e81e001b6fa951d9c0963b7a46da6` | non_address_book | unknown | unknown | verified | n/a | `0x958892b4a0512b28aaac890fc938868bbd42f064` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd0701a8da2b6c621df7dd82479211ee4690d815e` | non_address_book | unknown | unknown | unverified | n/a | `0x958892b4a0512b28aaac890fc938868bbd42f064` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd0cf314c2627965ef4ddcf08c9c446e7867f5d85` | non_address_book | unknown | unknown | unverified | n/a | `0x958892b4a0512b28aaac890fc938868bbd42f064` |
| polygon | unverified unclassified | UnnamedContract<br>`0xa0ea34df1edef56d8e1a8479f7cc2ce70d5dffb5` | non_address_book | unknown | unknown | unverified | n/a | `0x40409dbb1e966b421a0a8b3e3a244f05102a64e0` |
| polygon | unverified unclassified | UnnamedContract<br>`0xa338e0492b2f944e9f8c0653d3ad1484f2657a37` | non_address_book | unknown | unknown | unverified | n/a | `0x40409dbb1e966b421a0a8b3e3a244f05102a64e0` |
| polygon | unverified unclassified | UnnamedContract<br>`0xacb51f1a83922632ca02b25a8164c10748001bde` | non_address_book | unknown | unknown | unverified | n/a | `0x40409dbb1e966b421a0a8b3e3a244f05102a64e0` |
| polygon | unverified unclassified | UnnamedContract<br>`0xc3c0313a0046a8ea8b2f9a7ba5d36c9493262b04` | non_address_book | unknown | unknown | unverified | n/a | `0x40409dbb1e966b421a0a8b3e3a244f05102a64e0` |
| polygon | unverified unclassified | UnnamedContract<br>`0xcdfeca7e17dcc97431e55552d5e481776e5d3efd` | non_address_book | unknown | unknown | unverified | n/a | `0x40409dbb1e966b421a0a8b3e3a244f05102a64e0` |
| polygon | unverified unclassified | UnnamedContract<br>`0xd5081a446c6a9a24ff50283fe893b69dfa20df99` | non_address_book | unknown | unknown | unverified | n/a | `0x40409dbb1e966b421a0a8b3e3a244f05102a64e0` |
| polygon | unverified unclassified | UnnamedContract<br>`0xd83d9151f491a25aa9901428f598555f2f235d7c` | non_address_book | unknown | unknown | unverified | n/a | `0x40409dbb1e966b421a0a8b3e3a244f05102a64e0` |
| polygon | unverified unclassified | UnnamedContract<br>`0xd8fcaf8bef7d9abf5cfcc91806b3048681ee5eb4` | non_address_book | unknown | unknown | unverified | n/a | `0x40409dbb1e966b421a0a8b3e3a244f05102a64e0` |
| polygon | unverified unclassified | UnnamedContract<br>`0xdb6aab33b605ccc92c91c45855cdf96d8dc051c6` | non_address_book | unknown | unknown | unverified | n/a | `0x40409dbb1e966b421a0a8b3e3a244f05102a64e0` |
| polygon | unverified unclassified | UnnamedContract<br>`0xe36f4f2faef8ceb04d8fc5849048d29a7b13f3a8` | non_address_book | unknown | unknown | unverified | n/a | `0x40409dbb1e966b421a0a8b3e3a244f05102a64e0` |
| polygon | unverified unclassified | UnnamedContract<br>`0xefb7e6be8356ccc6827799b6a7348ee674a80eae` | non_address_book | unknown | unknown | unverified | n/a | `0x40409dbb1e966b421a0a8b3e3a244f05102a64e0` |
| polygon | unverified unclassified | UnnamedContract<br>`0xf3d2048af0f1faaea858b52145e0b4e6bc0f28a8` | non_address_book | unknown | unknown | unverified | n/a | `0x40409dbb1e966b421a0a8b3e3a244f05102a64e0` |
| polygon | unverified unclassified | UnnamedContract<br>`0xfc539a559e170f848323e19dfd66007520510085` | non_address_book | unknown | unknown | unverified | n/a | `0x40409dbb1e966b421a0a8b3e3a244f05102a64e0` |
| polygon | unverified unclassified | UnnamedContract<br>`0xfee44e871d8e1090747fdd7fbf62b0be067a17d6` | non_address_book | unknown | unknown | unverified | n/a | `0x40409dbb1e966b421a0a8b3e3a244f05102a64e0` |
| polygon | unverified unclassified | UnnamedContract<br>`0x0052f461a5dc0feef70cabc312c9acb1e4afc0a2` | non_address_book | unknown | unknown | unverified | n/a | `0x9d1873d76a5f9195c50714974dbab3c37627aa41` |
| polygon | unverified unclassified | UnnamedContract<br>`0x00dbeb1e45485d53df7c2f0df1aa0b6dc30311d3` | non_address_book | unknown | unknown | unverified | n/a | `0x9d1873d76a5f9195c50714974dbab3c37627aa41` |
| polygon | unverified unclassified | UnnamedContract<br>`0x01d24cf63a8bd78193571e3a3bc9b9c83be51b41` | non_address_book | unknown | unknown | unverified | n/a | `0x9d1873d76a5f9195c50714974dbab3c37627aa41` |
| polygon | unverified unclassified | UnnamedContract<br>`0x0206ad570549c80d6c35b395eac1c774f50ddc76` | non_address_book | unknown | unknown | unverified | n/a | `0x9d1873d76a5f9195c50714974dbab3c37627aa41` |
| polygon | unverified unclassified | UnnamedContract<br>`0x02ca7cfe48628257408db5c14b575a8a85a701c6` | non_address_book | unknown | unknown | unverified | n/a | `0x9d1873d76a5f9195c50714974dbab3c37627aa41` |
| polygon | unverified unclassified | UnnamedContract<br>`0x03bc6d9efed65708d35fdaefb25e87631a0a3437` | non_address_book | unknown | unknown | unverified | n/a | `0x9d1873d76a5f9195c50714974dbab3c37627aa41` |
| polygon | unverified unclassified | UnnamedContract<br>`0x03cd157746c61f44597dd54c6f6702105258c722` | non_address_book | unknown | unknown | unverified | n/a | `0x9d1873d76a5f9195c50714974dbab3c37627aa41` |
| polygon | unverified unclassified | UnnamedContract<br>`0x058115befc3621816ee7a69e651015e45f6e67da` | non_address_book | unknown | unknown | unverified | n/a | `0x9d1873d76a5f9195c50714974dbab3c37627aa41` |
| polygon | unverified unclassified | UnnamedContract<br>`0x059628cb867c4292597ed00ff77bc9bad6a987b0` | non_address_book | unknown | unknown | unverified | n/a | `0x9d1873d76a5f9195c50714974dbab3c37627aa41` |
| polygon | unverified unclassified | UnnamedContract<br>`0x062df9c4efd2030e243ffcc398b652e8b8f95c6f` | non_address_book | unknown | unknown | unverified | n/a | `0x9d1873d76a5f9195c50714974dbab3c37627aa41` |
| polygon | unverified unclassified | UnnamedContract<br>`0x0691f759cf329f573ae464e7fb3d621dfaba7ed8` | non_address_book | unknown | unknown | unverified | n/a | `0x9d1873d76a5f9195c50714974dbab3c37627aa41` |
| polygon | unverified unclassified | UnnamedContract<br>`0x074676e9bfbc70042d408423ee59d7fd9522ff4c` | non_address_book | unknown | unknown | unverified | n/a | `0x9d1873d76a5f9195c50714974dbab3c37627aa41` |
| polygon | unverified unclassified | UnnamedContract<br>`0x0870919e63ac3bab54d7e9a1dd4b45cf38808479` | non_address_book | unknown | unknown | unverified | n/a | `0x9d1873d76a5f9195c50714974dbab3c37627aa41` |
| polygon | unverified unclassified | UnnamedContract<br>`0x0873a4e11dfffc0c09be8f5ef5026206b75b9689` | non_address_book | unknown | unknown | unverified | n/a | `0x9d1873d76a5f9195c50714974dbab3c37627aa41` |
| polygon | unverified unclassified | UnnamedContract<br>`0x099a2540848573e94fb1ca0fa420b00acbbc845a` | non_address_book | unknown | unknown | unverified | n/a | `0x9d1873d76a5f9195c50714974dbab3c37627aa41` |
| polygon | unverified unclassified | UnnamedContract<br>`0x0a9823c5cd84099fde8566a1adf0f2bb41cc6e7d` | non_address_book | unknown | unknown | unverified | n/a | `0x9d1873d76a5f9195c50714974dbab3c37627aa41` |
| polygon | unverified unclassified | UnnamedContract<br>`0x0c6ff30968226be88430eebfcba7f217d81f370b` | non_address_book | unknown | unknown | unverified | n/a | `0x9d1873d76a5f9195c50714974dbab3c37627aa41` |
| polygon | unverified unclassified | UnnamedContract<br>`0x0c8f8453f7941465739970a221ba1d2d1d49a671` | non_address_book | unknown | unknown | unverified | n/a | `0x9d1873d76a5f9195c50714974dbab3c37627aa41` |
| polygon | unverified unclassified | UnnamedContract<br>`0x0dbf62b33a1c8c137b4e5f096ba98617b1fac83d` | non_address_book | unknown | unknown | unverified | n/a | `0x9d1873d76a5f9195c50714974dbab3c37627aa41` |
| polygon | unverified unclassified | UnnamedContract<br>`0x0dec46bfda8ce29bfa6be4343aa44d9befc71e90` | non_address_book | unknown | unknown | unverified | n/a | `0x9d1873d76a5f9195c50714974dbab3c37627aa41` |
| polygon | unverified unclassified | UnnamedContract<br>`0x0e025e1d80d633b27e6f4937bd00a0e925d891ad` | non_address_book | unknown | unknown | unverified | n/a | `0x9d1873d76a5f9195c50714974dbab3c37627aa41` |
| polygon | unverified unclassified | UnnamedContract<br>`0x0e12b79a6e5c919f89246ededb2d6413a8890a54` | non_address_book | unknown | unknown | unverified | n/a | `0x9d1873d76a5f9195c50714974dbab3c37627aa41` |
| polygon | unverified unclassified | UnnamedContract<br>`0x0e3377d5ed4d7ea617db48daec4b0efd4c8cc096` | non_address_book | unknown | unknown | unverified | n/a | `0x9d1873d76a5f9195c50714974dbab3c37627aa41` |
| polygon | unverified unclassified | UnnamedContract<br>`0x0e56af317988b4964501e29c0c97e3e21ce9a25a` | non_address_book | unknown | unknown | unverified | n/a | `0x9d1873d76a5f9195c50714974dbab3c37627aa41` |
| polygon | unverified unclassified | UnnamedContract<br>`0x0f8da6b8f057d773d4d390e4e4bbc22f65ecc5e2` | non_address_book | unknown | unknown | unverified | n/a | `0x9d1873d76a5f9195c50714974dbab3c37627aa41` |
| polygon | unverified unclassified | UnnamedContract<br>`0x0fefd8bf724c049def564b118338d81808d4d6e4` | non_address_book | unknown | unknown | unverified | n/a | `0x9d1873d76a5f9195c50714974dbab3c37627aa41` |
| polygon | unverified unclassified | UnnamedContract<br>`0x10c8264c0935b3b9870013e057f330ff3e9c56dc` | non_address_book | unknown | unknown | unverified | n/a | `0x9d1873d76a5f9195c50714974dbab3c37627aa41` |
| polygon | unverified unclassified | UnnamedContract<br>`0x10e5f3dfc81b3e5ef4e648c4454d04e79e1e41e2` | non_address_book | unknown | unknown | unverified | n/a | `0x9d1873d76a5f9195c50714974dbab3c37627aa41` |
| polygon | unverified unclassified | UnnamedContract<br>`0x12162c3e810393dec01362abf156d7ecf6159528` | non_address_book | unknown | unknown | unverified | n/a | `0x9d1873d76a5f9195c50714974dbab3c37627aa41` |
| polygon | unverified unclassified | UnnamedContract<br>`0x12528b3026cd252e8b4435e22f5615f7f3b8da77` | non_address_book | unknown | unknown | unverified | n/a | `0x9d1873d76a5f9195c50714974dbab3c37627aa41` |
| polygon | unverified unclassified | UnnamedContract<br>`0x13b25ae82978d7d65302ed0b4ee0ee0a5cb3a70b` | non_address_book | unknown | unknown | unverified | n/a | `0x9d1873d76a5f9195c50714974dbab3c37627aa41` |
| polygon | unverified unclassified | UnnamedContract<br>`0x15eb9d6596ce607ad90f003cf1c2d28340cd5c76` | non_address_book | unknown | unknown | unverified | n/a | `0x9d1873d76a5f9195c50714974dbab3c37627aa41` |
| polygon | unverified unclassified | UnnamedContract<br>`0x166816cacb15f80badc5cd0cc24d64c8d1d1cf61` | non_address_book | unknown | unknown | unverified | n/a | `0x9d1873d76a5f9195c50714974dbab3c37627aa41` |

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
| needs_review | 437 |

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
