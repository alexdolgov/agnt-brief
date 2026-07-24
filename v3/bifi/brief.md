# Agentic Audit Brief: BiFi

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 7 (0 matched; 7 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: BiFi (`bifi`)
- Website: [https://bifi.finance/](https://bifi.finance/)
- Lifecycle: active (Tier 0, 87.7% below peak)
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: avalanche, bsc, ethereum, kaia
- Contract surface: 251 unique implementations (370 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $5,863,316.09
- On-chain TVL (included contracts): $2,096,772.48
- TVL by chain: Ethereum $1,956,884.42 | Bsc $139,888.06

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for BiFi in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 251 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 20
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/66
- Verified + Unaudited implementations: 65
- Verified by bytecode match: 1
- Unverified implementations: 185
- Unique implementations: 251
- Raw deployments: 370
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 7 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (65)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ERC20 | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2791bfd60d232150bff86b39b7146c0eaaa2ba81` | ⚠️ Unaudited |
| TokenHandler | token | non_address_book | non_address_book_inventory (excluded) | 5 | ethereum | n/a | 6 deployments: ethereum `0x128647690c7733593aa3dd149eebc5e256e79217`; ethereum `0x25567603eb61a4a49f27e433652b5b8940d10682`; ethereum `0x47be3d1def039bd85e7570864bb5148e7491a65f`; ethereum `0x808c3ba97268dbf9695b1ec10729e09c7e67a9e3`; ethereum `0x93948aa8488f522d5b079af84fe411fbce476e9f`; ethereum `0xd76b7060f1b646fa14740ff6ac670a4f0a6fc5e3` | ⚠️ Unaudited |
| tokenHandler | token | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x26d0e4707af1c1daad8e9ba21b99cda7fd24c40b`; bsc `0xba9de5a8fd91408826616f2d6d7470a11e34c9f0`; bsc `0xbb9ce7c152f9d6fbbebd90e9b06d021f64e6052b` | ⚠️ Unaudited |
| TokenHandler | token | non_address_book | non_address_book_inventory (excluded) | 4 | bsc | n/a | 5 deployments: bsc `0x2a29598cbc17ba112c8fd0e07fbf5402ef57e6b8`; bsc `0x77c59ef81bcb6b5aa5efefa58b9914b2b115941b`; bsc `0x829ed2a2bef8b72e648f92cbf01587c7e12e8c1e`; bsc `0xb67c5433d234d656002f12664d15ab4b40666d9b`; bsc `0xf86d8218bcc15874f5d25c191fddd43f2334c3eb` | ⚠️ Unaudited |
| BEP721 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x522b3ade2bf7f5922afc54d93447afb481d526f0` | ⚠️ Unaudited |
| BFCETHModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeace4e60f68e20797fc696c870066f1e19c2b37d` | ⚠️ Unaudited |
| BFCModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x488933457e89656d7ef7e69c10f2f80c7aca19b5` | ⚠️ Unaudited |
| BiFiETHModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18740cea640cba9ce836dc80ce61c7b9ca4f11cb` | ⚠️ Unaudited |
| callProxyManagerCallProxyHandlerCallProxyMarketCallProxyUser | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ce8acc2afc1ab5c77915fedb1f74f8d9b63b287` | ⚠️ Unaudited |
| callProxyManagerCallProxyHandlerCallProxyMarketCallProxyUserCallProxySISafeMath | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: ethereum `0xfa7a7e8639d88e6d024df967401f7c208e9073ff`; bsc `0xea0c08aa00f1e890a618be400cb0e1ada52926d5` | ⚠️ Unaudited |
| CoinHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x13000c4a215efe7e414bb329b2f11c39bcf92d78`; ethereum `0x64d18fd81a30150b8f881cb424677f178ea25c33` | ⚠️ Unaudited |
| CoinHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x58a059180901fae4089ac5e775e3ce6333f00580`; ethereum `0xfa56855934c1d19b9c2a52331e32a9a44546f92b`; bsc `0xcef7762dc835d3cf80caf81e73eaaf88bafe2289` | ⚠️ Unaudited |
| CoinHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x170b6aa872166ec2f8515c2b855c34b6c7563c18`; bsc `0x5553bcd4cc9af1a395da99fe8dd0ed3ad4bfdcf1` | ⚠️ Unaudited |
| CoinHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x3b441812d2081366ae2422eef5a0ec592d7f9f69`; avalanche `0x446881360d6d39779d292662fca9bc85c5789db3` | ⚠️ Unaudited |
| CoinHandlerDataStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: ethereum `0xbb0aee2fe7e9d73a5dc3354136231a617717db03`; bsc `0xfc23789de7ba9491d9b305c04b2029fe8f57cefe`; avalanche `0x56f243c149cae1c3bd5bea8fdc697181e0ea0f18` | ⚠️ Unaudited |
| CoinInterestModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x00be030392f68736a79415e4c5f378933fe270e5`; bsc `0x18be1743efc40228879c07d55f36ae9ff5127fc3`; avalanche `0x491f5e2661bb203b56834866dc08027c8be76f25`; avalanche `0x85b8636c1f368d55c1fd5889e9e4391c30081d40` | ⚠️ Unaudited |
| CoinSI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: ethereum `0x320c3391d1dc3d36e0e1da26809db9e0463517c7`; bsc `0x17aacf9dc6ec3113ce50d943ca931330ad361407`; avalanche `0x0a58f7955497b9e56d1328512e1ca427d689f577` | ⚠️ Unaudited |
| CoinSIDataStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x33672fe5df9539ca391e57332557c882c469fab0` | ⚠️ Unaudited |
| DaiHandlerDataStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4596302baaaeae0732fbdd9cdf7aec5e83c3cfba`; bsc `0x6198176773cf5e2401c2b87afe2a6eb17bffc204` | ⚠️ Unaudited |
| DaiInterestModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0b6ad863edd550712c63ff799f28a59d4a53ac76`; bsc `0xb8621b5451e00149b3424fbb709e2de687ea23c2` | ⚠️ Unaudited |
| DaiSI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x257d6f962f23b7848792665ed9513a1ab72ecde4` | ⚠️ Unaudited |
| DaiSIDataStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1fb028d9676ab353482588a1eb2be5d62eeb384e` | ⚠️ Unaudited |
| ERC721 | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3aff7b16489fcc59483de44e96bd9ec533915924` | ⚠️ Unaudited |
| EtherHandlerDataStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: bsc `0xf852d45ecf138b4db32208f3d1d074c5ada101d2`; avalanche `0xd3ad10e22f8d74dd73a225b281bbf07cddebd028` | ⚠️ Unaudited |
| EtherHandlerProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8aba88e8a4ab28319b782199cb17f0001ee67984` | ⚠️ Unaudited |
| EtherInterestModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: bsc `0xca62d43e8824b02029444072c9a45bba6d4a198e`; avalanche `0x7d2da860c2a22f6c6c58d5f004346fcf61ab7529` | ⚠️ Unaudited |
| etherLiquidationManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd514b33a361b82fe5d89070db6917cd4f73285d` | ⚠️ Unaudited |
| etherManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6e464417a4523ae2f3d59665b0b1fc37c1d17a2f`; ethereum `0xc6c99a98bfe1ba7f9bd1dbaf0c9a74103e99af0d` | ⚠️ Unaudited |
| EtherSIDataStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: bsc `0x3560c0eccc7c83a1fd33088a6b5007d78011a866`; avalanche `0x2b26d2fbd439de9ebdf2b681da32dacbeab6745c` | ⚠️ Unaudited |
| HandlerManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x913f2dee2746cda2ab34106c47abc4a8f4e36fa5`; ethereum `0xfed2eddbdf201d6b5469cbd6866d19808d8879fb` | ⚠️ Unaudited |
| HandlerManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x72e419713551410297b407bf1b61a0dcc1cf5d0a`; bsc `0x8010f9e14c8286b9312e624370fddc07fee2fc75` | ⚠️ Unaudited |
| HandlerManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: ethereum `0x54b932b5512d984ac6c02ebe4f32ad032c41b1b5`; avalanche `0x23964e4677e178647bba6fb94f19e9b3ec95dbc2` | ⚠️ Unaudited |
| InterestModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 15 deployments: ethereum `0x105ea44ffa77f517e31f20d7c22ebebf739bbf87`; ethereum `0x24231014199e0c1a8ec2d963389008d85b658f7d`; ethereum `0x29ecabde2c57b6d4183f915ebca1a25804a60db1`; ethereum `0x614661d42d81eb446f740424ccac24f09e97417e`; ethereum `0x7560ad17e2a0b790019734bf4f9790323cd68cb6`; ethereum `0x75a7ce14e9a07428384c63dc7dd0adefe3b229c2`; ethereum `0xaf9b1d6e89db4d43f3ff9347d5da2d169e97994e`; ethereum `0xcbf361d934e2ac49b2c47c2910ea9489ab955829`; bsc `0x00a29c8e3a2a8171506b5d67ba4d59441c267178`; bsc `0x73e781578af6bfbbe950b7059dc2e99c76d00f20`; bsc `0xc7b7dc64ac2412bd33cb85d5c552276b66612e8b`; avalanche `0x25cb77ddda15075dcf3f681fdc36b14fed27f2a0`; avalanche `0x2a8c94e2397361cde5114ca1618bab46eb8d71bf`; avalanche `0x46a9d54ed07db5a470412d492ee437bf0d079cd7`; avalanche `0xfc36eecbf3fca5d65c73951d4cd7fea1d845c29c` | ⚠️ Unaudited |
| LinkHandlerDataStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4c383fb3d7046ce7f9e5c537493cd192e9ae23c` | ⚠️ Unaudited |
| LinkInterestModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6323a4e6fa95a100db47c925d369581e38272d7f` | ⚠️ Unaudited |
| LinkSI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc06b71ec195ccaa98a57dd4ba9e90a7469c37d13` | ⚠️ Unaudited |
| LiquidationManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x1cf8428c23753d315840293f097bd6d702f2df5f`; avalanche `0x217db0d688889b5b151d26f267082f12f364b34b` | ⚠️ Unaudited |
| Manager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: bsc `0x9c9d3acc1a65c3ff0c1075ed23f383d05f1a9bd6`; avalanche `0x74326d2bfbf22312158850ac3b4f7ae8a0a347fd` | ⚠️ Unaudited |
| ManagerDataStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: ethereum `0x34e45203669aadd0d6ac342538aa7b62c9128f4a`; bsc `0x0a95a3b05da318983741360abe29dcda63dbb4d3`; avalanche `0xe0322f306d285d97eb411cd2e9a86bb92b88c427` | ⚠️ Unaudited |
| ManagerFlashLoan | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: ethereum `0xe2f26b242107f4c6ee48039555d7211d018ace37`; bsc `0x8cc8a0d4759d94ecd1e5a0ae2866b3cbe65c4493`; avalanche `0xdef0e8f0c3ab944a015554c83fbcf346d3c98f3b` | ⚠️ Unaudited |
| ManagerSlotSetter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: ethereum `0xcd9632707ec422759be2a5b348f8178ff280a453`; bsc `0x8c0b650f149a0817be2e0767a636122994ac49ad`; avalanche `0xeb86b3592915dce5c0eff780f60b7b8b0af1b5b3` | ⚠️ Unaudited |
| MarketSIHandlerDataStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 13 deployments: ethereum `0x2146922c1d5a8a553afbc051da276814dd0629c0`; ethereum `0x3ff1dd4646f0db3b0a1fd8bb3ad7be906e26f1a0`; ethereum `0x83e0bdd46831ee2b00fbfeb8e0488c7cd14284c0`; ethereum `0x9c06a381bfde2a14d8961057cb81a34b72fb0fb6`; ethereum `0xba9b7567ef2b441c99f32a3fb0eeaa248281586d`; ethereum `0xd0d87cd79965841780022419bf3b8e0bec0e0500`; ethereum `0xdb684577f71f8febfe6af208461e948eae255025`; bsc `0x073646a0e6eebe48416881c412cfe254e711f7a7`; bsc `0x38f64765d37c50213ad0b5c062c42b51cb0f7712`; bsc `0x6b61068d079fcc88228975c7495c77ac8306778d`; bsc `0xc86097ec0bbe0d0b58b36165594f7755e3dd5488`; avalanche `0x9ee793f342da93bc69e3c9df4a49e4d0cd7cd9ed`; avalanche `0xbf81872c3fc6abdae40b8e98247a6593c3d5992c` | ⚠️ Unaudited |
| Observer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: ethereum `0x4acb9f0c1a266fbfbe455a4bbc85f14672a23b6f`; bsc `0x2e092daa1db9822382028a4e1b4f7867188df97e` | ⚠️ Unaudited |
| observerOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x06c8fec203be5b45fadc3f139efdf4444cf8828e`; bsc `0xaa2e64d6077fac803c449a8e64b21aafcb360d60` | ⚠️ Unaudited |
| OracleProxy | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x0c0420c7aed04b67d8ccef82563af4c8f801f668`; ethereum `0x6ba1ddd63a5680b7c666b74a50be28b24d507beb`; bsc `0x0ed96ea272e634ef5df9150a6d29a0c4c6f61567`; bsc `0xdd80fb1c16a1eb446be94655e5f762c19c7fa89e`; avalanche `0x3bb4b71bc78cef5202ca88ad061e2589dadf9fab`; avalanche `0x4d30d8343093ba8512a411d4633592ea2be21d5d`; avalanche `0x71c5e8ab83f3cf56faa3e22b7a70aa44200a4f79`; avalanche `0xef0443c3871345d7e05a9f81232bdcd489f75e4f` | ⚠️ Unaudited |
| PositionStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x11a428566ef7039b1fc221992aecaba80aeded3a`; ethereum `0x836c3afe6104066da3b2d3c244f66d6698623ba9`; bsc `0x8138840d438d2bd78f978c4a27faded119f266f0` | ⚠️ Unaudited |
| ReqTokenProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x1b0ba3b6fc27c4189869e4a2ecef2404e3e3d996`; avalanche `0x34da42143b0c6e321ceb76931c637c12bd865f7e`; avalanche `0xc4d1e935f02a44d44985e6b1c0ee1ee616fc146a`; avalanche `0xe893233515b7d02dd4e3d888162d4c87dc837943` | ⚠️ Unaudited |
| StrategyLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3513bab078e69209d5749291fc540f744d32993f` | ⚠️ Unaudited |
| tokenHandler | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x04189e20e4691136af0d9bff884cb122a8bf2e16`; ethereum `0x07038da741864ff39199aa9ecc38a32916f84610`; ethereum `0x66a2ea39b0413d672fd032389731fc7ee0a33a57`; ethereum `0xf725c0d72d3e5e284077d8fcc357bf8547fa3e8d`; bsc `0xc712bf219aae27b64fb354f2ddd4d6e4e22c9b6e` | ⚠️ Unaudited |
| TokenHandler | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x38b3a3b5b53987c9aaf4c41f3534425ac93369b8`; ethereum `0x986eb51e67e154901ff9b482835788b8f3054076` | ⚠️ Unaudited |
| TokenHandler | token | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x739068b9cb728c18f04cd7e7f0fe2ef707744c5e`; avalanche `0x8385ea36dd4bdc84b3f2ac718c332e18c1e42d36` | ⚠️ Unaudited |
| TokenManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfef1974aeb87a92e8b8b99b7bc260f116679938f` | ⚠️ Unaudited |
| TokenSI | token | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: bsc `0x9650255a3077d3012deb944b2dfa5741eb2e1929`; avalanche `0x449e4e12d8fdc140c31f278352d64f5d1deb465e` | ⚠️ Unaudited |
| Updater | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: ethereum `0x52d5fd317cb3bd71d1c7b24960a8f4b7275eb18c`; ethereum `0x9d4633e89a86bba1bec66b4a45781b8c3343b4b9`; bsc `0x17eebab632425e4574c1382e328340c2ee11573d`; bsc `0xe468f7156a5cf3dba5be4ded88b0d1a51d5b3b24` | ⚠️ Unaudited |
| UsdcHandlerDataStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xa4917b10aae8969346bdbcbb0be823bd62529b07`; avalanche `0xe6211b248d624e57051a92d5614d12b37f9f682c` | ⚠️ Unaudited |
| UsdcInterestModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: ethereum `0x864290a03fa4d75b6f0a2afdf5e2b6213f0760db`; bsc `0x26363f6fb3a5dce8f9bdcf5ae40d772a1582184d` | ⚠️ Unaudited |
| UsdcSIDataStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: bsc `0xd323359a39fc4fdb283f9a787cfec80afe4c8910`; avalanche `0x18676678690985a08e5a541200ae0df924a8d85a` | ⚠️ Unaudited |
| UsdtHandlerDataStorage | token | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: ethereum `0xfdc7d058bede981ea865fb64d06382a2206a1c42`; bsc `0x3a54444c3c9e608e41c9cea7c04d3320b272cb37`; avalanche `0x2449119d95753bb87fec59bc2ae02ad94137c95c` | ⚠️ Unaudited |
| UsdtInterestModel | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4f5f62a3e013e56be3fcfc9e3b2182525f18df97`; bsc `0x653db994ab70efe391782a265975ca0a614c6b79` | ⚠️ Unaudited |
| UsdtSI | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2438b33ee508069ba1e3feb0ee7eb1a47568ebae` | ⚠️ Unaudited |
| UsdtSIDataStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x327dce0ad2ca4ae718b94ae6f5b7eec9a6cbf0b4`; avalanche `0xd78fdca4864b8c888940765990043dc635a4d9d5` | ⚠️ Unaudited |
| XFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x9f9347afc304d5c3c0683a5ed523e5f010e4736f`; ethereum `0xb74e18c6d337c1c9268a209fa244134f4f60c9b5` | ⚠️ Unaudited |
| XFactoryExternal | registry | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3d6d4f3640ae84c0baef0a76c35d1ec5668b70e9`; ethereum `0x97ae437edbaca2db40cff2e0436b894ff72988af` | ⚠️ Unaudited |
| XFactoryExternal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x618343a112a12a1f41b9b65bc82b134636852bae` | ⚠️ Unaudited |
| XFactoryLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x81f2c2b38c2c347e353f6e6ee50f9814c3dfc28e`; bsc `0xbcc4468b7dc953b5ed81fe937de11e6da0ea7d34` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| MarketHandlerDataStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 12 deployments: ethereum `0x23219ff3b4d838c94a8c8ae37ab3ff0ac0743047`; ethereum `0x2ed04ce9a032b9a101975172f59a8d33e877bb1f`; ethereum `0x7146ed71b1cb0d90e705ef20066b3453809e89e8`; ethereum `0x8606eb1b72ecc5f30cf1544439d59b48828c38f7`; ethereum `0xb7b1d0f022d7ee6803a4ada06f1c22a945b2878f`; ethereum `0xf2f4145bfc1023b5eca25df9c8e4a94467e77db5`; ethereum `0xf54c97004eb4d19947fc7d4d011696474532d76b`; bsc `0x042f2b4838d98c58561fd3a047258603b77c8766`; bsc `0x8f6181c85ce204f792a6cb750872a4aa70844558`; bsc `0xb766acab14077b9b30cf435b216d93403b729fd7`; avalanche `0x1074fd06b7b1c65f5a450e81ed0245bc90bcba65`; avalanche `0xd377750886a5e13d2598ffbd64498da0de3f592b` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (185)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x017da94a04f0567ba97b1e5c79c30c0967a949f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02574ea0055e9a161ad4b3a0647fdad2efecaa31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x031c3139587478c70d206d0673154521a797bf89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0433345552f1af71866ce1c01094a77457d3aaf4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x046eec669321c3687f76edbe8ff63c4ade06c1ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05af846b9ddfa7ac987d5ca80136de09946fec4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09a692d8ae7124ead846c785ac77f217f98fb9fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09c4a0855ff7979656fa42d81423e6487b7b7433` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09f334cc027462d8876dd1ebf0930e1715342d38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b31fee8bf53bfe2f5f7083b73a4c9c8b517e32f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d6b0c426606f45fa23c356ab10f7de4ae4222bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e3d83be06153df8b502e96463f2e671c40c0b08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x103de8469f507e0ea3300f1c53857a72569d6a9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10a8ba5a1fdbd63fd574a3ba7e147ae53470b364` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10de547981c234f0809c3b7cb10a5197841876f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11851a5819e18b5fdb05f4ad5982ef634efe6bc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12186e9d74bfa2429d38e285627c6763f2206550` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1324c528f5f9df916434fec8286e07809a33c664` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13e6266ec6f5ff33b26c974dfdd905e0e7a8397b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15dccb359751ee2aab54a1b1b0fcc346a8392ffd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x168b2d7dd6b9812392f99ba01a14db03ed06dedc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x170721278c46fd8778611456a6af7ac160cb9a07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x194eadfc65c1e19a534aee2dd193ba068eed08af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1bc872651d43546842dee55aff0fd9de5fc226cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d51c1ea2a195e5d8c2cc8829c717c2481330977` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e92f03ce0de4d334e2c8139650e898be752c926` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ecfcf5a0b750d4b4063e8edf787e081dc65ad10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2168dab12a6a93181bbad9c9dc769307c36fb45c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26d0e4707af1c1daad8e9ba21b99cda7fd24c40b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2747f01f2b5a5b164926c631df079ccb5f4e5011` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ae85247201a84509c0b2e6420eac9d1de1c07e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c26bc2ebdd70532a2ca70f6739ba7d55bf8019a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c716c6df141d38abcf5d17152f9d2ae1e9b243f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3199611202ed308832cdad856301ed2a7d2d3fc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x325138d9651724eeacb9261ae784450e26fdb8f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x326e7b85e10849ca2a2f86368ebefde394956513` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34da42143b0c6e321ceb76931c637c12bd865f7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38cd386057d6d0e111c04bdf1e6eb42974cb5ac1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c3439c95fabfc6058868030ad709a0e5f5f0670` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c6ef2fb21c9ef27455943e6c0cd2b19f6106b31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4586fb63f55a2547eb8b152ea255c84f3489af2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x46043a7b92e7c6e626126c1d0d2d94adbd0705a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a3dbe5c88ee8dda48dd01a986393774f786a972` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4dbacdfb0cf6b3cce37449968ebbc11c3655de67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x501b7f20c3a6e5b26ff975ca80ed7f006424adc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5093385fe9678fe0e8941bb42486af8c8c4f36e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5303570b6f1617869cf3771712369fd27a0b843d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5881b8dac5a672b12022b87cd68db07532740849` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59fa8ee50cf49c507b5b0e87d562e40de3373917` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ac691468aa1a6eebf806a808e112121a6ad2e93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c3cc8de66fdc5fb84211932201d668a9fca5cfa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ebb521d7a983452a6bf50f084a51ef9a627944e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61ce8141244e779fdcffd00a1455b6bd82f7ebf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63e6c867651b51e2b791c3711d5de7b9bd631f38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6496cedfa588a82b6cd3dc4562df3f1f0c983a9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6638b0095e0a730c8f4a3ee8f07248393581df64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6971db652eade476e26c89b32a80491b2614aeb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f46a1fcb9c78fec96374400f2334febe032133e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7069e7e79499b844de4884d8a8cbcb0c9aefb4cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x736a348bb7bdad117755c88bc4e1ab4ef07c5c50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7638aa8040a2ad6147e1dc7aacbf06f15eb88960` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78e9b4b6e1ab6cea01b5891921d7d52814ba4b9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79dcab2f8cce8b15422ed44a26fe35b13a07b922` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7cb14c469d9fd17e19513f768a0ea3135250db27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d3a66e8401fd29ba83646607b4a32e714db5400` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f925784a74ab264248de8b52205d4a1b6aad485` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80fbd04193b108a649e483a5f4615e1b261a716c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x829ed2a2bef8b72e648f92cbf01587c7e12e8c1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82d48b9847325d422fe1d15c7c5800ea736047c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x831b56747e97eaeeedb4d9e57bcc264c563568d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8385ea36dd4bdc84b3f2ac718c332e18c1e42d36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x844fde067fc37c5f9c8fde5d357b4010a3a005a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x857f5ed4a6de6ceecc8e7f9b13d5235c3ff94bee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86dd17410597af66e0e24c374654c7f940a89592` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8aba88e8a4ab28319b782199cb17f0001ee67984` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d9da054e385a0553f46471c1b06d37683d16e9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8dd0c26772561b2ed809243ff6eada41de434bfc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8eec50fcd1ad2753c0bcd9c63edca5b75a029f12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fe43cd5e416421b141a8defc13998894ef179ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x942a9bf629d1e17d87294b0f20898eeb8316cdd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9532488c56291ab0a3fed0c0f5703d3b7e21387c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a78496384ba40801b0bf1c2ca4feb4d1205324a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cc762c822254e541b4d7632517bcdff45d0d8a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e1e4a1505927b43326a0e809042e502e9f2d43c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ffef5be382570e9405cb38fd581213a8fcae5d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1bd1d501af7d0b146951fdff49bd4c0bd25e220` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2c2c35595a30b69118b5b94c0279fb60b923cba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7d0b04a6840d50e4342367555443a332d217a45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8dcf3a872ddfa2ee15334e46c6132a524e1e85b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaad3cf01f542f1a58dbd732d927b434883020bcd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad26900a85743822a751243cb43d53e7c3884df1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad56db13ee074838d768e87cd7f2bc794e0502ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb169c9540cfd15592cd67dda05711c910c4f1dc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb25a5f055ef4fab877f1657614f8c66c5b386da2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8a6215fc1c26215d8b6726a62878a4e29278765` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9537da8347b0f0cf970627404f71d3d3205e42a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9e5575289952da092ad181c47a8fcfd97b555d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba9de5a8fd91408826616f2d6d7470a11e34c9f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbffa399d9feda3282ab35e56bddd11a519cbbb9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc31fcb1154035a1a00de74f006708aae2bf5583d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4d1e935f02a44d44985e6b1c0ee1ee616fc146a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc54d4e48a3b57baa04b872e94fcbc13907dff2e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc80ab388a1fb7190d79ff7c69cd1f28ae8268d85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca56c9e90846d5c15971c73f167e31987d38fe49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbf6065954fc17d07b28102c84902f20ffac0a33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd3efc51d7b047b78cf255390844e0ace173ea18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcdead090ed860e4a0f64dc3fabf1a1dbfc43d8a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xceebaeef7b1ae562fbf7ddc2741ab60df71c972c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf2fc1d354018a39d5ef036aa865ad8cbf7b611e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd07f5208f7f94003712c6d3f4d5fffbb3764430a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd68e26498eee76ee02d9db7acd1cea68618c93fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xddabbffbbfaa1bed070f3a6deb6033f94d8c8f26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe53bd427ebcd1a5fe1f0f9429812907ce85113b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe893233515b7d02dd4e3d888162d4c87dc837943` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe899f1d6a86589b0a8224e3c7ea920df76df2785` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8db0e11d2867a98295df64b12e9937e8257689a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8fe727044dd51fbd4601764ac01dbe4743b28b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea3b4a2da5dbe8379ad4c60aad5184df69d7c9ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec25e2d394bb3cb59f7a3243e30b28fcdb54091b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed0a7a9096beb91db2b9bb30d4718fadde23237b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed7b0974dc5d98b9e7c83695c415d68b8781b0f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xedd2ba1f9c401f33ec22fa7f189aa72bc09e8655` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf21dd227c2ccbdca725b3101250c62f8ea836180` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2dafc08a5d2c62fa721ea6c4b054a780761cfb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4f6ff3e44419780c7b0faa22dc5f2442931f191` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf61cb7d7c2b6e684b97e5b7bd1e67101bc7292dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf86d8218bcc15874f5d25c191fddd43f2334c3eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd36d0283de498adf7ad6fc65d231d3aed941194` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff4ad928194a82173d48947163bc12da97bbe079` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x027cb9b17335798b8df7327e33a386ab6517b2e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x087d63a5b5e4597d66e8d95150dfbd30053247f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0c7d5ae016f806603cb1782bea29ac69471cab9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0dd2500a4c6ae96b17e7fe52eaf6c231a672a627` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x108bff6101734bfe3f0ad8f88ef53beee3dd8576` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x16cf55c32fdd0e4e32ac64c59e557019221808e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x17cc53217ccb586ba37cf51e048442c421036c3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1c2cf265694a790a9bdb3a6452f800868a941780` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1de101a72e945a1ce33e9d45fdeef8a03d903c4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x24898ebfd99c6be4a6d421daf241fcfc45ad8a50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2ab6bc11836a47bbc6c0460f3dcea630b3dcf6cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x30a3924f695304e48149b9dcc987e9fe96da2fd7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x36fea61e0c09f53cf4d7f01dd5303fcbb945578a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x416a1809d1dd4f8bcb8d854acdb24d210b4645eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x439f4f638a37ac66a77df01184ec388b7edb8c78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x488933457e89656d7ef7e69c10f2f80c7aca19b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4b1791422de4807b2999eeb65359f3e13fa9d11d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4bbf98cc2b19950b4530769560dfc9d8ae0c09b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x517797f26b1bf6cdfede4eb718bb4ba753ebc8ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x52c6cc4c433aba8415a0d43f9b978ab2945aadcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x557703bd78c6711c2920e004734d4921f3f4ff90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x60479f5b218965e1ee3a1babc909258bcba97c98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x66d8dce96a5e3059f391252217fa14735eb9e9e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6e183f138f1b945b449440cbfd256de69d89858f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7fa719dca583b5fe08a28fb168c8f55892092716` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x806059fbd70081b7494e36259268df35eeebf328` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x80f3c1b46b541a581b1ba3057d3dcad1df0ddeb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x86873ca2c3e8db349f2b64c5e643519b8ce85d1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x87592565d02db2b851ffa3efa75b576abc5506fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8df5620a549cdd8b18a34f421416d1efa810bf7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9e8cb4f0861bcf6df7cc3602e63b8976303c2ee9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xabd41c2bfb4d5e0d625fc15ae7a2995336609641` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb31fd6e9d7d016b731261995025c8ac7097c8cf7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb483c1dcae61200bacfdaaa2fa8b6235b44630f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb503f3e76b6527f48440a61209eac12ccd24326c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb7b4661f3f224d315bd52ed759b2e15f78209879` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc127e585e382b26ae1bb91ead31863da075fdfbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc59fddd72d043b188b6441fcfa89d0b144a88f2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd411939f2375271acc95ebdce10d5bde5c728437` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdddb02be857396de24609b322a30026354929a11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe0bcab1c619d67973e4827ec81bed8a66cebef39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe33f9e2ead0b79d6882f1f1b39cc18875ee40af6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe49900b8a0707b751df58857b706fc84c068882d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeee856dad367a95f0f4f1756392b331ff3c85894` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf4e2d5dffbcde924c76daa1c6e962c74f50055f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf9b2f6d2a61923e61ad9f6daa78f52b7e1722b12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfc4870a0c190f4d191e85bd26d73747d487c040d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfd9bbe6a9cd9cfbe1c862de3cbc91b26858c3758` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | kaia | n/a | 8 deployments: kaia `0x07970f9d979d8594b394fe12345211c376adff89`; kaia `0x4800577a71f68ed7ef4c09cfbe7fd6e066d5f0da`; kaia `0x4bae7ba39e4e71660307dce780f1ec9b7b7666ee`; kaia `0x808c707c53c3d30d0247e4b8d78aa0d8b75caae1`; kaia `0x829fcfb6a6eea9d14eb4c14fac5b29874bdbad13`; kaia `0xa6ade2e6c6f50a2d9b9c4b819e84b367f88c1598`; kaia `0xe03487927e137526a2db796a9b3b4048ab615043`; kaia `0xe0e67b991d6b5cf73d8a17a10c3de74616c1ec11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | kaia | n/a | `0x2791bfd60d232150bff86b39b7146c0eaaa2ba81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1568486ca7c907238594722080ef34ddf945b2c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x24901703113c02f638a10597989a80c755ef23e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x66dc86619bc07b36a39b2ebd37b11b29c83949ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8c3be3a3d93f066b0fb13b5323af99e727e4dc49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa3d95cad2500bdc0f8ede58a2d5a24d7592c741e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb295608d148abe91c9f4d1befd51029161261067` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 320
- Live contracts: 0
- Unknown liveness contracts: 320
- Source-verified contracts: 156
- Currently scope-matched contracts retained as-is: 0
- Classification counts: candidate auto own=5, candidate review=74, source verified unclassified=77, unverified unclassified=164

Showing first 200 of 320 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| candidate auto own | ReqTokenProxy<br>`0x986eb51e67e154901ff9b482835788b8f3054076` | non_address_book | token | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| candidate auto own | TokenManager<br>`0x913f2dee2746cda2ab34106c47abc4a8f4e36fa5` | non_address_book | governance | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| candidate auto own | TokenManager<br>`0xfef1974aeb87a92e8b8b99b7bc260f116679938f` | non_address_book | governance | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| candidate auto own | TokenManager<br>`0x8010f9e14c8286b9312e624370fddc07fee2fc75` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x1107c996c4a04935d5c280c83494e5ef46e24684` |
| candidate auto own | ReqTokenProxy<br>`0x8385ea36dd4bdc84b3f2ac718c332e18c1e42d36` | non_address_book | token | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x5f8e55661da3d9e7be6cd621cdc7e6d30674cd6a` |
| candidate review | BFCETHModel<br>`0xeace4e60f68e20797fc696c870066f1e19c2b37d` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x504908bfd5861faca56fd0eb95df1d0358063aa4` |
| candidate review | BiFiETHModel<br>`0x18740cea640cba9ce836dc80ce61c7b9ca4f11cb` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x504908bfd5861faca56fd0eb95df1d0358063aa4` |
| candidate review | callProxyManagerCallProxyHandlerCallProxyMarketCallProxyUser<br>`0x4ce8acc2afc1ab5c77915fedb1f74f8d9b63b287` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| candidate review | CoinHandler<br>`0x58a059180901fae4089ac5e775e3ce6333f00580` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| candidate review | CoinHandler<br>`0x64d18fd81a30150b8f881cb424677f178ea25c33` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| candidate review | coinHandler<br>`0xfa56855934c1d19b9c2a52331e32a9a44546f92b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| candidate review | coinSI<br>`0x320c3391d1dc3d36e0e1da26809db9e0463517c7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| candidate review | HandlerManager<br>`0x54b932b5512d984ac6c02ebe4f32ad032c41b1b5` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| candidate review | HandlerManager<br>`0xfed2eddbdf201d6b5469cbd6866d19808d8879fb` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| candidate review | interestModel<br>`0x105ea44ffa77f517e31f20d7c22ebebf739bbf87` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| candidate review | interestModel<br>`0x24231014199e0c1a8ec2d963389008d85b658f7d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| candidate review | interestModel<br>`0x29ecabde2c57b6d4183f915ebca1a25804a60db1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| candidate review | InterestModel<br>`0x614661d42d81eb446f740424ccac24f09e97417e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| candidate review | interestModel<br>`0x7560ad17e2a0b790019734bf4f9790323cd68cb6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| candidate review | InterestModel<br>`0x75a7ce14e9a07428384c63dc7dd0adefe3b229c2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| candidate review | interestModel<br>`0xaf9b1d6e89db4d43f3ff9347d5da2d169e97994e` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| candidate review | interestModel<br>`0xcbf361d934e2ac49b2c47c2910ea9489ab955829` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| candidate review | managerDataStorage<br>`0x34e45203669aadd0d6ac342538aa7b62c9128f4a` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| candidate review | ManagerFlashLoan<br>`0xe2f26b242107f4c6ee48039555d7211d018ace37` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| candidate review | OracleProxy<br>`0x0c0420c7aed04b67d8ccef82563af4c8f801f668` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| candidate review | oracleProxy<br>`0x6ba1ddd63a5680b7c666b74a50be28b24d507beb` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| candidate review | PositionStorage<br>`0x11a428566ef7039b1fc221992aecaba80aeded3a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| candidate review | PositionStorage<br>`0x836c3afe6104066da3b2d3c244f66d6698623ba9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| candidate review | tokenHandler<br>`0x04189e20e4691136af0d9bff884cb122a8bf2e16` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| candidate review | TokenHandler<br>`0x07038da741864ff39199aa9ecc38a32916f84610` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| candidate review | TokenHandler<br>`0x38b3a3b5b53987c9aaf4c41f3534425ac93369b8` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| candidate review | TokenHandler<br>`0x47be3d1def039bd85e7570864bb5148e7491a65f` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| candidate review | TokenHandler<br>`0x66a2ea39b0413d672fd032389731fc7ee0a33a57` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| candidate review | TokenHandler<br>`0xf725c0d72d3e5e284077d8fcc357bf8547fa3e8d` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| candidate review | UsdcInterestModel<br>`0x864290a03fa4d75b6f0a2afdf5e2b6213f0760db` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| candidate review | XFactory<br>`0x97ae437edbaca2db40cff2e0436b894ff72988af` | non_address_book | registry | unknown | verified | review: no_fresh_structural_match | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| candidate review | XFactory<br>`0x9f9347afc304d5c3c0683a5ed523e5f010e4736f` | non_address_book | registry | unknown | verified | review: no_fresh_structural_match | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| candidate review | XFactory<br>`0xb74e18c6d337c1c9268a209fa244134f4f60c9b5` | non_address_book | registry | unknown | verified | review: no_fresh_structural_match | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| candidate review | CoinHandler<br>`0x5553bcd4cc9af1a395da99fe8dd0ed3ad4bfdcf1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1107c996c4a04935d5c280c83494e5ef46e24684` |
| candidate review | coinHandler<br>`0xcef7762dc835d3cf80caf81e73eaaf88bafe2289` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1107c996c4a04935d5c280c83494e5ef46e24684` |
| candidate review | coinSI<br>`0x17aacf9dc6ec3113ce50d943ca931330ad361407` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1107c996c4a04935d5c280c83494e5ef46e24684` |
| candidate review | HandlerManager<br>`0x72e419713551410297b407bf1b61a0dcc1cf5d0a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1107c996c4a04935d5c280c83494e5ef46e24684` |
| candidate review | InterestModel<br>`0x00a29c8e3a2a8171506b5d67ba4d59441c267178` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1107c996c4a04935d5c280c83494e5ef46e24684` |
| candidate review | InterestModel<br>`0x73e781578af6bfbbe950b7059dc2e99c76d00f20` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1107c996c4a04935d5c280c83494e5ef46e24684` |
| candidate review | InterestModel<br>`0xc7b7dc64ac2412bd33cb85d5c552276b66612e8b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1107c996c4a04935d5c280c83494e5ef46e24684` |
| candidate review | LiquidationManager<br>`0x1cf8428c23753d315840293f097bd6d702f2df5f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1107c996c4a04935d5c280c83494e5ef46e24684` |
| candidate review | ManagerDataStorage<br>`0x0a95a3b05da318983741360abe29dcda63dbb4d3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1107c996c4a04935d5c280c83494e5ef46e24684` |
| candidate review | ManagerFlashLoan<br>`0x8cc8a0d4759d94ecd1e5a0ae2866b3cbe65c4493` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1107c996c4a04935d5c280c83494e5ef46e24684` |
| candidate review | OracleProxy<br>`0x0ed96ea272e634ef5df9150a6d29a0c4c6f61567` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1107c996c4a04935d5c280c83494e5ef46e24684` |
| candidate review | oracleProxy<br>`0xdd80fb1c16a1eb446be94655e5f762c19c7fa89e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1107c996c4a04935d5c280c83494e5ef46e24684` |
| candidate review | PositionStorage<br>`0x8138840d438d2bd78f978c4a27faded119f266f0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1107c996c4a04935d5c280c83494e5ef46e24684` |
| candidate review | ReqTokenProxy<br>`0x1b0ba3b6fc27c4189869e4a2ecef2404e3e3d996` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x1107c996c4a04935d5c280c83494e5ef46e24684` |
| candidate review | StrategyLogic<br>`0x3513bab078e69209d5749291fc540f744d32993f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1107c996c4a04935d5c280c83494e5ef46e24684` |
| candidate review | TokenHandler<br>`0x77c59ef81bcb6b5aa5efefa58b9914b2b115941b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1107c996c4a04935d5c280c83494e5ef46e24684` |
| candidate review | tokenHandler<br>`0xbb9ce7c152f9d6fbbebd90e9b06d021f64e6052b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1107c996c4a04935d5c280c83494e5ef46e24684` |
| candidate review | TokenHandler<br>`0xc712bf219aae27b64fb354f2ddd4d6e4e22c9b6e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1107c996c4a04935d5c280c83494e5ef46e24684` |
| candidate review | tokenSI<br>`0x9650255a3077d3012deb944b2dfa5741eb2e1929` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1107c996c4a04935d5c280c83494e5ef46e24684` |
| candidate review | UsdcInterestModel<br>`0x26363f6fb3a5dce8f9bdcf5ae40d772a1582184d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1107c996c4a04935d5c280c83494e5ef46e24684` |
| candidate review | XFactory<br>`0xbcc4468b7dc953b5ed81fe937de11e6da0ea7d34` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1107c996c4a04935d5c280c83494e5ef46e24684` |
| candidate review | XFactoryLogic<br>`0x81f2c2b38c2c347e353f6e6ee50f9814c3dfc28e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1107c996c4a04935d5c280c83494e5ef46e24684` |
| candidate review | CoinHandler<br>`0x3b441812d2081366ae2422eef5a0ec592d7f9f69` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5f8e55661da3d9e7be6cd621cdc7e6d30674cd6a` |
| candidate review | CoinSI<br>`0x0a58f7955497b9e56d1328512e1ca427d689f577` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5f8e55661da3d9e7be6cd621cdc7e6d30674cd6a` |
| candidate review | EtherHandlerProxy<br>`0x8aba88e8a4ab28319b782199cb17f0001ee67984` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x5f8e55661da3d9e7be6cd621cdc7e6d30674cd6a` |
| candidate review | HandlerManager<br>`0x23964e4677e178647bba6fb94f19e9b3ec95dbc2` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0x5f8e55661da3d9e7be6cd621cdc7e6d30674cd6a` |
| candidate review | InterestModel<br>`0x25cb77ddda15075dcf3f681fdc36b14fed27f2a0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5f8e55661da3d9e7be6cd621cdc7e6d30674cd6a` |
| candidate review | InterestModel<br>`0x2a8c94e2397361cde5114ca1618bab46eb8d71bf` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5f8e55661da3d9e7be6cd621cdc7e6d30674cd6a` |
| candidate review | InterestModel<br>`0x46a9d54ed07db5a470412d492ee437bf0d079cd7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5f8e55661da3d9e7be6cd621cdc7e6d30674cd6a` |
| candidate review | InterestModel<br>`0xfc36eecbf3fca5d65c73951d4cd7fea1d845c29c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5f8e55661da3d9e7be6cd621cdc7e6d30674cd6a` |
| candidate review | LiquidationManager<br>`0x217db0d688889b5b151d26f267082f12f364b34b` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0x5f8e55661da3d9e7be6cd621cdc7e6d30674cd6a` |
| candidate review | ManagerDataStorage<br>`0xe0322f306d285d97eb411cd2e9a86bb92b88c427` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0x5f8e55661da3d9e7be6cd621cdc7e6d30674cd6a` |
| candidate review | ManagerFlashLoan<br>`0xdef0e8f0c3ab944a015554c83fbcf346d3c98f3b` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0x5f8e55661da3d9e7be6cd621cdc7e6d30674cd6a` |
| candidate review | OracleProxy<br>`0x3bb4b71bc78cef5202ca88ad061e2589dadf9fab` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0x5f8e55661da3d9e7be6cd621cdc7e6d30674cd6a` |
| candidate review | OracleProxy<br>`0x4d30d8343093ba8512a411d4633592ea2be21d5d` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0x5f8e55661da3d9e7be6cd621cdc7e6d30674cd6a` |
| candidate review | OracleProxy<br>`0x71c5e8ab83f3cf56faa3e22b7a70aa44200a4f79` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0x5f8e55661da3d9e7be6cd621cdc7e6d30674cd6a` |
| candidate review | OracleProxy<br>`0xef0443c3871345d7e05a9f81232bdcd489f75e4f` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0x5f8e55661da3d9e7be6cd621cdc7e6d30674cd6a` |
| candidate review | ReqTokenProxy<br>`0x34da42143b0c6e321ceb76931c637c12bd865f7e` | non_address_book | token | unknown | verified | review: missing_independent_ownership_evidence | `0x5f8e55661da3d9e7be6cd621cdc7e6d30674cd6a` |
| candidate review | ReqTokenProxy<br>`0xc4d1e935f02a44d44985e6b1c0ee1ee616fc146a` | non_address_book | token | unknown | verified | review: missing_independent_ownership_evidence | `0x5f8e55661da3d9e7be6cd621cdc7e6d30674cd6a` |
| candidate review | TokenHandler<br>`0x739068b9cb728c18f04cd7e7f0fe2ef707744c5e` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x5f8e55661da3d9e7be6cd621cdc7e6d30674cd6a` |
| candidate review | TokenSI<br>`0x449e4e12d8fdc140c31f278352d64f5d1deb465e` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x5f8e55661da3d9e7be6cd621cdc7e6d30674cd6a` |
| source verified unclassified | callProxyManagerCallProxyHandlerCallProxyMarketCallProxyUserCallProxySISafeMath<br>`0xfa7a7e8639d88e6d024df967401f7c208e9073ff` | non_address_book | governance | unknown | verified | n/a | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| source verified unclassified | CoinHandlerDataStorage<br>`0xbb0aee2fe7e9d73a5dc3354136231a617717db03` | non_address_book | unknown | unknown | verified | n/a | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| source verified unclassified | CoinInterestModel<br>`0x00be030392f68736a79415e4c5f378933fe270e5` | non_address_book | unknown | unknown | verified | n/a | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| source verified unclassified | DaiHandlerDataStorage<br>`0x4596302baaaeae0732fbdd9cdf7aec5e83c3cfba` | non_address_book | unknown | unknown | verified | n/a | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| source verified unclassified | DaiInterestModel<br>`0x0b6ad863edd550712c63ff799f28a59d4a53ac76` | non_address_book | unknown | unknown | verified | n/a | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| source verified unclassified | DaiSI<br>`0x257d6f962f23b7848792665ed9513a1ab72ecde4` | non_address_book | unknown | unknown | verified | n/a | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| source verified unclassified | ERC721<br>`0x3aff7b16489fcc59483de44e96bd9ec533915924` | non_address_book | token | unknown | verified | n/a | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| source verified unclassified | etherManager<br>`0x6e464417a4523ae2f3d59665b0b1fc37c1d17a2f` | non_address_book | governance | unknown | verified | n/a | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| source verified unclassified | etherManager<br>`0xc6c99a98bfe1ba7f9bd1dbaf0c9a74103e99af0d` | non_address_book | governance | unknown | verified | n/a | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| source verified unclassified | LinkHandlerDataStorage<br>`0xe4c383fb3d7046ce7f9e5c537493cd192e9ae23c` | non_address_book | unknown | unknown | verified | n/a | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| source verified unclassified | LinkInterestModel<br>`0x6323a4e6fa95a100db47c925d369581e38272d7f` | non_address_book | unknown | unknown | verified | n/a | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| source verified unclassified | LinkSI<br>`0xc06b71ec195ccaa98a57dd4ba9e90a7469c37d13` | non_address_book | unknown | unknown | verified | n/a | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| source verified unclassified | ManagerSlotSetter<br>`0xcd9632707ec422759be2a5b348f8178ff280a453` | non_address_book | governance | unknown | verified | n/a | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| source verified unclassified | marketHandlerDataStorage<br>`0x23219ff3b4d838c94a8c8ae37ab3ff0ac0743047` | non_address_book | unknown | unknown | verified | n/a | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| source verified unclassified | MarketHandlerDataStorage<br>`0x2ed04ce9a032b9a101975172f59a8d33e877bb1f` | non_address_book | unknown | unknown | verified | n/a | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| source verified unclassified | MarketHandlerDataStorage<br>`0x7146ed71b1cb0d90e705ef20066b3453809e89e8` | non_address_book | unknown | unknown | verified | n/a | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| source verified unclassified | marketHandlerDataStorage<br>`0xf54c97004eb4d19947fc7d4d011696474532d76b` | non_address_book | unknown | unknown | verified | n/a | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| source verified unclassified | MarketSIHandlerDataStorage<br>`0x2146922c1d5a8a553afbc051da276814dd0629c0` | non_address_book | unknown | unknown | verified | n/a | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| source verified unclassified | marketSIHandlerDataStorage<br>`0x3ff1dd4646f0db3b0a1fd8bb3ad7be906e26f1a0` | non_address_book | unknown | unknown | verified | n/a | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| source verified unclassified | MarketSIHandlerDataStorage<br>`0x83e0bdd46831ee2b00fbfeb8e0488c7cd14284c0` | non_address_book | unknown | unknown | verified | n/a | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| source verified unclassified | marketSIHandlerDataStorage<br>`0x9c06a381bfde2a14d8961057cb81a34b72fb0fb6` | non_address_book | unknown | unknown | verified | n/a | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| source verified unclassified | marketSIHandlerDataStorage<br>`0xba9b7567ef2b441c99f32a3fb0eeaa248281586d` | non_address_book | unknown | unknown | verified | n/a | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| source verified unclassified | marketSIHandlerDataStorage<br>`0xd0d87cd79965841780022419bf3b8e0bec0e0500` | non_address_book | unknown | unknown | verified | n/a | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| source verified unclassified | marketSIHandlerDataStorage<br>`0xdb684577f71f8febfe6af208461e948eae255025` | non_address_book | unknown | unknown | verified | n/a | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| source verified unclassified | Observer<br>`0x4acb9f0c1a266fbfbe455a4bbc85f14672a23b6f` | non_address_book | unknown | unknown | verified | n/a | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| source verified unclassified | observerOracle<br>`0x06c8fec203be5b45fadc3f139efdf4444cf8828e` | non_address_book | operational_periphery | unknown | verified | n/a | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| source verified unclassified | Updater<br>`0x52d5fd317cb3bd71d1c7b24960a8f4b7275eb18c` | non_address_book | unknown | unknown | verified | n/a | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| source verified unclassified | Updater<br>`0x9d4633e89a86bba1bec66b4a45781b8c3343b4b9` | non_address_book | unknown | unknown | verified | n/a | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| source verified unclassified | UsdtHandlerDataStorage<br>`0xfdc7d058bede981ea865fb64d06382a2206a1c42` | non_address_book | token | unknown | verified | n/a | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| source verified unclassified | UsdtInterestModel<br>`0x4f5f62a3e013e56be3fcfc9e3b2182525f18df97` | non_address_book | token | unknown | verified | n/a | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| source verified unclassified | UsdtSI<br>`0x2438b33ee508069ba1e3feb0ee7eb1a47568ebae` | non_address_book | token | unknown | verified | n/a | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| source verified unclassified | XFactoryExternal<br>`0x3d6d4f3640ae84c0baef0a76c35d1ec5668b70e9` | non_address_book | registry | unknown | verified | n/a | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| source verified unclassified | BEP721<br>`0x522b3ade2bf7f5922afc54d93447afb481d526f0` | non_address_book | unknown | unknown | verified | n/a | `0x1107c996c4a04935d5c280c83494e5ef46e24684` |
| source verified unclassified | callProxyManagerCallProxyHandlerCallProxyMarketCallProxyUserCallProxySISafeMath<br>`0xea0c08aa00f1e890a618be400cb0e1ada52926d5` | non_address_book | unknown | unknown | verified | n/a | `0x1107c996c4a04935d5c280c83494e5ef46e24684` |
| source verified unclassified | CoinHandlerDataStorage<br>`0xfc23789de7ba9491d9b305c04b2029fe8f57cefe` | non_address_book | unknown | unknown | verified | n/a | `0x1107c996c4a04935d5c280c83494e5ef46e24684` |
| source verified unclassified | CoinInterestModel<br>`0x18be1743efc40228879c07d55f36ae9ff5127fc3` | non_address_book | unknown | unknown | verified | n/a | `0x1107c996c4a04935d5c280c83494e5ef46e24684` |
| source verified unclassified | DaiHandlerDataStorage<br>`0x6198176773cf5e2401c2b87afe2a6eb17bffc204` | non_address_book | unknown | unknown | verified | n/a | `0x1107c996c4a04935d5c280c83494e5ef46e24684` |
| source verified unclassified | DaiInterestModel<br>`0xb8621b5451e00149b3424fbb709e2de687ea23c2` | non_address_book | unknown | unknown | verified | n/a | `0x1107c996c4a04935d5c280c83494e5ef46e24684` |
| source verified unclassified | DaiSIDataStorage<br>`0x1fb028d9676ab353482588a1eb2be5d62eeb384e` | non_address_book | unknown | unknown | verified | n/a | `0x1107c996c4a04935d5c280c83494e5ef46e24684` |
| source verified unclassified | EtherHandlerDataStorage<br>`0xf852d45ecf138b4db32208f3d1d074c5ada101d2` | non_address_book | unknown | unknown | verified | n/a | `0x1107c996c4a04935d5c280c83494e5ef46e24684` |
| source verified unclassified | EtherInterestModel<br>`0xca62d43e8824b02029444072c9a45bba6d4a198e` | non_address_book | unknown | unknown | verified | n/a | `0x1107c996c4a04935d5c280c83494e5ef46e24684` |
| source verified unclassified | EtherSIDataStorage<br>`0x3560c0eccc7c83a1fd33088a6b5007d78011a866` | non_address_book | unknown | unknown | verified | n/a | `0x1107c996c4a04935d5c280c83494e5ef46e24684` |
| source verified unclassified | Manager<br>`0x9c9d3acc1a65c3ff0c1075ed23f383d05f1a9bd6` | non_address_book | unknown | unknown | verified | n/a | `0x1107c996c4a04935d5c280c83494e5ef46e24684` |
| source verified unclassified | ManagerSlotSetter<br>`0x8c0b650f149a0817be2e0767a636122994ac49ad` | non_address_book | unknown | unknown | verified | n/a | `0x1107c996c4a04935d5c280c83494e5ef46e24684` |
| source verified unclassified | MarketHandlerDataStorage<br>`0x042f2b4838d98c58561fd3a047258603b77c8766` | non_address_book | unknown | unknown | verified | n/a | `0x1107c996c4a04935d5c280c83494e5ef46e24684` |
| source verified unclassified | MarketHandlerDataStorage<br>`0x8f6181c85ce204f792a6cb750872a4aa70844558` | non_address_book | unknown | unknown | verified | n/a | `0x1107c996c4a04935d5c280c83494e5ef46e24684` |
| source verified unclassified | MarketHandlerDataStorage<br>`0xb766acab14077b9b30cf435b216d93403b729fd7` | non_address_book | unknown | unknown | verified | n/a | `0x1107c996c4a04935d5c280c83494e5ef46e24684` |
| source verified unclassified | MarketSIHandlerDataStorage<br>`0x073646a0e6eebe48416881c412cfe254e711f7a7` | non_address_book | unknown | unknown | verified | n/a | `0x1107c996c4a04935d5c280c83494e5ef46e24684` |
| source verified unclassified | MarketSIHandlerDataStorage<br>`0x38f64765d37c50213ad0b5c062c42b51cb0f7712` | non_address_book | unknown | unknown | verified | n/a | `0x1107c996c4a04935d5c280c83494e5ef46e24684` |
| source verified unclassified | marketSIHandlerDataStorage<br>`0x6b61068d079fcc88228975c7495c77ac8306778d` | non_address_book | unknown | unknown | verified | n/a | `0x1107c996c4a04935d5c280c83494e5ef46e24684` |
| source verified unclassified | MarketSIHandlerDataStorage<br>`0xc86097ec0bbe0d0b58b36165594f7755e3dd5488` | non_address_book | unknown | unknown | verified | n/a | `0x1107c996c4a04935d5c280c83494e5ef46e24684` |
| source verified unclassified | Observer<br>`0x2e092daa1db9822382028a4e1b4f7867188df97e` | non_address_book | unknown | unknown | verified | n/a | `0x1107c996c4a04935d5c280c83494e5ef46e24684` |
| source verified unclassified | observerOracle<br>`0xaa2e64d6077fac803c449a8e64b21aafcb360d60` | non_address_book | unknown | unknown | verified | n/a | `0x1107c996c4a04935d5c280c83494e5ef46e24684` |
| source verified unclassified | Updater<br>`0x17eebab632425e4574c1382e328340c2ee11573d` | non_address_book | unknown | unknown | verified | n/a | `0x1107c996c4a04935d5c280c83494e5ef46e24684` |
| source verified unclassified | Updater<br>`0xe468f7156a5cf3dba5be4ded88b0d1a51d5b3b24` | non_address_book | unknown | unknown | verified | n/a | `0x1107c996c4a04935d5c280c83494e5ef46e24684` |
| source verified unclassified | UsdcHandlerDataStorage<br>`0xa4917b10aae8969346bdbcbb0be823bd62529b07` | non_address_book | unknown | unknown | verified | n/a | `0x1107c996c4a04935d5c280c83494e5ef46e24684` |
| source verified unclassified | UsdcSIDataStorage<br>`0xd323359a39fc4fdb283f9a787cfec80afe4c8910` | non_address_book | unknown | unknown | verified | n/a | `0x1107c996c4a04935d5c280c83494e5ef46e24684` |
| source verified unclassified | UsdtHandlerDataStorage<br>`0x3a54444c3c9e608e41c9cea7c04d3320b272cb37` | non_address_book | unknown | unknown | verified | n/a | `0x1107c996c4a04935d5c280c83494e5ef46e24684` |
| source verified unclassified | UsdtInterestModel<br>`0x653db994ab70efe391782a265975ca0a614c6b79` | non_address_book | unknown | unknown | verified | n/a | `0x1107c996c4a04935d5c280c83494e5ef46e24684` |
| source verified unclassified | UsdtSIDataStorage<br>`0x327dce0ad2ca4ae718b94ae6f5b7eec9a6cbf0b4` | non_address_book | unknown | unknown | verified | n/a | `0x1107c996c4a04935d5c280c83494e5ef46e24684` |
| source verified unclassified | XFactoryExternal<br>`0x618343a112a12a1f41b9b65bc82b134636852bae` | non_address_book | unknown | unknown | verified | n/a | `0x1107c996c4a04935d5c280c83494e5ef46e24684` |
| source verified unclassified | CoinHandlerDataStorage<br>`0x56f243c149cae1c3bd5bea8fdc697181e0ea0f18` | non_address_book | unknown | unknown | verified | n/a | `0x5f8e55661da3d9e7be6cd621cdc7e6d30674cd6a` |
| source verified unclassified | CoinInterestModel<br>`0x491f5e2661bb203b56834866dc08027c8be76f25` | non_address_book | unknown | unknown | verified | n/a | `0x5f8e55661da3d9e7be6cd621cdc7e6d30674cd6a` |
| source verified unclassified | CoinInterestModel<br>`0x85b8636c1f368d55c1fd5889e9e4391c30081d40` | non_address_book | unknown | unknown | verified | n/a | `0x5f8e55661da3d9e7be6cd621cdc7e6d30674cd6a` |
| source verified unclassified | CoinSIDataStorage<br>`0x33672fe5df9539ca391e57332557c882c469fab0` | non_address_book | unknown | unknown | verified | n/a | `0x5f8e55661da3d9e7be6cd621cdc7e6d30674cd6a` |
| source verified unclassified | EtherHandlerDataStorage<br>`0xd3ad10e22f8d74dd73a225b281bbf07cddebd028` | non_address_book | unknown | unknown | verified | n/a | `0x5f8e55661da3d9e7be6cd621cdc7e6d30674cd6a` |
| source verified unclassified | EtherInterestModel<br>`0x7d2da860c2a22f6c6c58d5f004346fcf61ab7529` | non_address_book | unknown | unknown | verified | n/a | `0x5f8e55661da3d9e7be6cd621cdc7e6d30674cd6a` |
| source verified unclassified | EtherSIDataStorage<br>`0x2b26d2fbd439de9ebdf2b681da32dacbeab6745c` | non_address_book | unknown | unknown | verified | n/a | `0x5f8e55661da3d9e7be6cd621cdc7e6d30674cd6a` |
| source verified unclassified | ManagerSlotSetter<br>`0xeb86b3592915dce5c0eff780f60b7b8b0af1b5b3` | non_address_book | governance | unknown | verified | n/a | `0x5f8e55661da3d9e7be6cd621cdc7e6d30674cd6a` |
| source verified unclassified | MarketHandlerDataStorage<br>`0x1074fd06b7b1c65f5a450e81ed0245bc90bcba65` | non_address_book | unknown | unknown | verified | n/a | `0x5f8e55661da3d9e7be6cd621cdc7e6d30674cd6a` |
| source verified unclassified | MarketHandlerDataStorage<br>`0xd377750886a5e13d2598ffbd64498da0de3f592b` | non_address_book | unknown | unknown | verified | n/a | `0x5f8e55661da3d9e7be6cd621cdc7e6d30674cd6a` |
| source verified unclassified | MarketSIHandlerDataStorage<br>`0x9ee793f342da93bc69e3c9df4a49e4d0cd7cd9ed` | non_address_book | unknown | unknown | verified | n/a | `0x5f8e55661da3d9e7be6cd621cdc7e6d30674cd6a` |
| source verified unclassified | MarketSIHandlerDataStorage<br>`0xbf81872c3fc6abdae40b8e98247a6593c3d5992c` | non_address_book | unknown | unknown | verified | n/a | `0x5f8e55661da3d9e7be6cd621cdc7e6d30674cd6a` |
| source verified unclassified | UsdcHandlerDataStorage<br>`0xe6211b248d624e57051a92d5614d12b37f9f682c` | non_address_book | unknown | unknown | verified | n/a | `0x5f8e55661da3d9e7be6cd621cdc7e6d30674cd6a` |
| source verified unclassified | UsdcSIDataStorage<br>`0x18676678690985a08e5a541200ae0df924a8d85a` | non_address_book | unknown | unknown | verified | n/a | `0x5f8e55661da3d9e7be6cd621cdc7e6d30674cd6a` |
| source verified unclassified | UsdtHandlerDataStorage<br>`0x2449119d95753bb87fec59bc2ae02ad94137c95c` | non_address_book | token | unknown | verified | n/a | `0x5f8e55661da3d9e7be6cd621cdc7e6d30674cd6a` |
| source verified unclassified | UsdtSIDataStorage<br>`0xd78fdca4864b8c888940765990043dc635a4d9d5` | non_address_book | token | unknown | verified | n/a | `0x5f8e55661da3d9e7be6cd621cdc7e6d30674cd6a` |
| unverified unclassified | UnnamedContract<br>`0x017da94a04f0567ba97b1e5c79c30c0967a949f1` | non_address_book | unknown | unknown | unverified | n/a | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| unverified unclassified | UnnamedContract<br>`0x02574ea0055e9a161ad4b3a0647fdad2efecaa31` | non_address_book | unknown | unknown | unverified | n/a | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| unverified unclassified | UnnamedContract<br>`0x031c3139587478c70d206d0673154521a797bf89` | non_address_book | unknown | unknown | unverified | n/a | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| unverified unclassified | UnnamedContract<br>`0x0433345552f1af71866ce1c01094a77457d3aaf4` | non_address_book | unknown | unknown | unverified | n/a | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| unverified unclassified | UnnamedContract<br>`0x046eec669321c3687f76edbe8ff63c4ade06c1ca` | non_address_book | unknown | unknown | unverified | n/a | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| unverified unclassified | UnnamedContract<br>`0x05af846b9ddfa7ac987d5ca80136de09946fec4e` | non_address_book | unknown | unknown | unverified | n/a | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| unverified unclassified | UnnamedContract<br>`0x09a692d8ae7124ead846c785ac77f217f98fb9fb` | non_address_book | unknown | unknown | unverified | n/a | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| unverified unclassified | UnnamedContract<br>`0x09c4a0855ff7979656fa42d81423e6487b7b7433` | non_address_book | unknown | unknown | unverified | n/a | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| unverified unclassified | UnnamedContract<br>`0x09f334cc027462d8876dd1ebf0930e1715342d38` | non_address_book | unknown | unknown | unverified | n/a | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| unverified unclassified | UnnamedContract<br>`0x0d6b0c426606f45fa23c356ab10f7de4ae4222bd` | non_address_book | unknown | unknown | unverified | n/a | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| unverified unclassified | UnnamedContract<br>`0x0e3d83be06153df8b502e96463f2e671c40c0b08` | non_address_book | unknown | unknown | unverified | n/a | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| unverified unclassified | UnnamedContract<br>`0x103de8469f507e0ea3300f1c53857a72569d6a9b` | non_address_book | unknown | unknown | unverified | n/a | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| unverified unclassified | UnnamedContract<br>`0x10a8ba5a1fdbd63fd574a3ba7e147ae53470b364` | non_address_book | unknown | unknown | unverified | n/a | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| unverified unclassified | UnnamedContract<br>`0x10de547981c234f0809c3b7cb10a5197841876f2` | non_address_book | unknown | unknown | unverified | n/a | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| unverified unclassified | UnnamedContract<br>`0x11851a5819e18b5fdb05f4ad5982ef634efe6bc9` | non_address_book | unknown | unknown | unverified | n/a | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| unverified unclassified | UnnamedContract<br>`0x12186e9d74bfa2429d38e285627c6763f2206550` | non_address_book | unknown | unknown | unverified | n/a | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| unverified unclassified | UnnamedContract<br>`0x1324c528f5f9df916434fec8286e07809a33c664` | non_address_book | unknown | unknown | unverified | n/a | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| unverified unclassified | UnnamedContract<br>`0x13e6266ec6f5ff33b26c974dfdd905e0e7a8397b` | non_address_book | unknown | unknown | unverified | n/a | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| unverified unclassified | UnnamedContract<br>`0x15dccb359751ee2aab54a1b1b0fcc346a8392ffd` | non_address_book | unknown | unknown | unverified | n/a | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| unverified unclassified | UnnamedContract<br>`0x170721278c46fd8778611456a6af7ac160cb9a07` | non_address_book | unknown | unknown | unverified | n/a | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| unverified unclassified | UnnamedContract<br>`0x194eadfc65c1e19a534aee2dd193ba068eed08af` | non_address_book | unknown | unknown | unverified | n/a | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| unverified unclassified | UnnamedContract<br>`0x1bc872651d43546842dee55aff0fd9de5fc226cf` | non_address_book | unknown | unknown | unverified | n/a | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| unverified unclassified | UnnamedContract<br>`0x1d51c1ea2a195e5d8c2cc8829c717c2481330977` | non_address_book | unknown | unknown | unverified | n/a | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| unverified unclassified | UnnamedContract<br>`0x1e92f03ce0de4d334e2c8139650e898be752c926` | non_address_book | unknown | unknown | unverified | n/a | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| unverified unclassified | UnnamedContract<br>`0x1ecfcf5a0b750d4b4063e8edf787e081dc65ad10` | non_address_book | unknown | unknown | unverified | n/a | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| unverified unclassified | UnnamedContract<br>`0x2747f01f2b5a5b164926c631df079ccb5f4e5011` | non_address_book | unknown | unknown | unverified | n/a | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| unverified unclassified | UnnamedContract<br>`0x2ae85247201a84509c0b2e6420eac9d1de1c07e6` | non_address_book | unknown | unknown | unverified | n/a | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| unverified unclassified | UnnamedContract<br>`0x2c26bc2ebdd70532a2ca70f6739ba7d55bf8019a` | non_address_book | unknown | unknown | unverified | n/a | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| unverified unclassified | UnnamedContract<br>`0x2c716c6df141d38abcf5d17152f9d2ae1e9b243f` | non_address_book | unknown | unknown | unverified | n/a | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| unverified unclassified | UnnamedContract<br>`0x3199611202ed308832cdad856301ed2a7d2d3fc0` | non_address_book | unknown | unknown | unverified | n/a | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| unverified unclassified | UnnamedContract<br>`0x325138d9651724eeacb9261ae784450e26fdb8f8` | non_address_book | unknown | unknown | unverified | n/a | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| unverified unclassified | UnnamedContract<br>`0x326e7b85e10849ca2a2f86368ebefde394956513` | non_address_book | unknown | unknown | unverified | n/a | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| unverified unclassified | UnnamedContract<br>`0x38cd386057d6d0e111c04bdf1e6eb42974cb5ac1` | non_address_book | unknown | unknown | unverified | n/a | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| unverified unclassified | UnnamedContract<br>`0x3c3439c95fabfc6058868030ad709a0e5f5f0670` | non_address_book | unknown | unknown | unverified | n/a | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| unverified unclassified | UnnamedContract<br>`0x3c6ef2fb21c9ef27455943e6c0cd2b19f6106b31` | non_address_book | unknown | unknown | unverified | n/a | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| unverified unclassified | UnnamedContract<br>`0x4586fb63f55a2547eb8b152ea255c84f3489af2b` | non_address_book | unknown | unknown | unverified | n/a | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| unverified unclassified | UnnamedContract<br>`0x46043a7b92e7c6e626126c1d0d2d94adbd0705a5` | non_address_book | unknown | unknown | unverified | n/a | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| unverified unclassified | UnnamedContract<br>`0x4a3dbe5c88ee8dda48dd01a986393774f786a972` | non_address_book | unknown | unknown | unverified | n/a | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| unverified unclassified | UnnamedContract<br>`0x4dbacdfb0cf6b3cce37449968ebbc11c3655de67` | non_address_book | unknown | unknown | unverified | n/a | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| unverified unclassified | UnnamedContract<br>`0x501b7f20c3a6e5b26ff975ca80ed7f006424adc8` | non_address_book | unknown | unknown | unverified | n/a | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| unverified unclassified | UnnamedContract<br>`0x5093385fe9678fe0e8941bb42486af8c8c4f36e9` | non_address_book | unknown | unknown | unverified | n/a | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| unverified unclassified | UnnamedContract<br>`0x5303570b6f1617869cf3771712369fd27a0b843d` | non_address_book | unknown | unknown | unverified | n/a | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| unverified unclassified | UnnamedContract<br>`0x5881b8dac5a672b12022b87cd68db07532740849` | non_address_book | unknown | unknown | unverified | n/a | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |
| unverified unclassified | UnnamedContract<br>`0x59fa8ee50cf49c507b5b0e87d562e40de3373917` | non_address_book | unknown | unknown | unverified | n/a | `0x2184ad186ff046e1038d9ebbefab82e297f37e95` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [bifrost_bifix_audit.pdf](https://github.com/bifrost-platform/BiFi-X/blob/main/docs/bifrost_bifix_audit.pdf) | unknown | Audit | 2021-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [(ENG)_BiFi_BIFROST_Extension_Theori.pdf](https://github.com/bifrost-platform/BIFI/blob/master/docs/ENG/(ENG)_BiFi_BIFROST_Extension_Theori.pdf) | unknown | Audit | 2021-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [(ENG)_BiFi_Lending_Sooho_EN_Public.pdf](https://github.com/bifrost-platform/BIFI/blob/master/docs/ENG/(ENG)_BiFi_Lending_Sooho_EN_Public.pdf) | unknown | Audit | 2020-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 22 | high |
| [(ENG)_BiFi_Token_Hexlant_EN.pdf](https://github.com/bifrost-platform/BIFI/blob/master/docs/ENG/(ENG)_BiFi_Token_Hexlant_EN.pdf) | unknown | Audit | 2021-05 | stale | Direct | address | no match | 0 | 0 | 0 | 1 | high |
| [(ENG)_BiFrost_BTC_Extension_CertiK.pdf](https://github.com/bifrost-platform/BIFI/blob/master/docs/ENG/(ENG)_BiFrost_BTC_Extension_CertiK.pdf) | CertiK | Audit | 2021-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 16 | high |
| [bifrost_bifi_audit.pdf](https://github.com/bifrost-platform/BIFI/blob/master/docs/bifrost_bifi_audit.pdf) | Theori | Audit | 2021-02 | stale | Direct | address | no match | 0 | 0 | 0 | 215 | low |
| [theori-audit-rev-2.0.pdf](https://github.com/bifrost-platform/BiFi-staking-protocol/blob/main/docs/theori-audit-rev-2.0.pdf) | Theori | Audit | 2020-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2154] bifrost_bifix_audit.pdf — no match: Scope section explicitly mentions BiFi and BiFi-X. Appendix lists external APIs for ManagerFlashLoan, BiFiNFT, XFactory, PositionStorage, ProductProxy, StrategyLogic. TokenManager, HandlerManager, InterestModel are mentioned in findings/recommendations.
- [2155] (ENG)_BiFi_BIFROST_Extension_Theori.pdf — no match: Extracted contract names from findings and recommendations. Audit date from executive summary start date.
- [2156] (ENG)_BiFi_Lending_Sooho_EN_Public.pdf — no match: All contracts from the file tree and analysis sections are included. The audit date is from the cover page: 'NOV. 13, 2020'.
- [2157] (ENG)_BiFi_Token_Hexlant_EN.pdf — no match: The audit report covers a single contract named Bifi (ERC20 token). The contract address is provided in the certification section. The report date is explicitly given as '10 MAY 2021' on the cover and 'DATE 2021/05/10' in the published information.
- [2158] (ENG)_BiFrost_BTC_Extension_CertiK.pdf — no match: All contracts listed in the Audit Scope table were extracted. The audit date is explicitly given as 'Delivery Date Aug 03, 2021'.
- [2159] bifrost_bifi_audit.pdf — no match: The report text is garbled and contains many function names and variables, but the scope section lists only a few contract addresses. Most extracted names are functions or variables, not contracts. Only the addresses in the scope table are clearly in scope.
- [2160] theori-audit-rev-2.0.pdf — no match: The scope section lists 'Smart contract' without a specific name or file path. The contract is referred to as 'RewardLane' throughout the report. No other contract names are identifiable.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| bifrost_bifix_audit.pdf | BiFi | unmatched — not counted | — | mentioned as lending contract in scope | no |
| bifrost_bifix_audit.pdf | BiFi-X | unmatched — not counted | — | mentioned as companion product in scope | no |
| bifrost_bifix_audit.pdf | TokenManager | unmatched — not counted | — | mentioned in Issue #4 | no |
| bifrost_bifix_audit.pdf | HandlerManager | unmatched — not counted | — | mentioned in Issue #4 | no |
| bifrost_bifix_audit.pdf | ManagerFlashLoan | unmatched — not counted | — | listed in Appendix: External APIs – Flash Loan | no |
| bifrost_bifix_audit.pdf | BiFiNFT | unmatched — not counted | — | listed in Appendix: External APIs – BiFi-X | no |
| bifrost_bifix_audit.pdf | XFactory | unmatched — not counted | — | listed in Appendix: External APIs – BiFi-X | no |
| bifrost_bifix_audit.pdf | PositionStorage | unmatched — not counted | — | listed in Appendix: External APIs – BiFi-X | no |
| bifrost_bifix_audit.pdf | ProductProxy | unmatched — not counted | — | listed in Appendix: External APIs – BiFi-X | no |
| bifrost_bifix_audit.pdf | StrategyLogic | unmatched — not counted | — | listed in Appendix: External APIs – BiFi-X | no |
| bifrost_bifix_audit.pdf | InterestModel | unmatched — not counted | — | mentioned in Recommendation #1 | no |
| (ENG)_BiFi_BIFROST_Extension_Theori.pdf | BTCPureLibs | unmatched — not counted | — | mentioned in Issue #1 and #2 | no |
| (ENG)_BiFi_BIFROST_Extension_Theori.pdf | BTCEntryLogicExternal | unmatched — not counted | — | mentioned in Issue #3 | no |
| (ENG)_BiFi_BIFROST_Extension_Theori.pdf | FundInternal | unmatched — not counted | — | mentioned in Issue #4 | no |
| (ENG)_BiFi_BIFROST_Extension_Theori.pdf | FundExternal | unmatched — not counted | — | mentioned in Recommendation #2 | no |
| (ENG)_BiFi_BIFROST_Extension_Theori.pdf | BTCEntryLogicInternal | unmatched — not counted | — | mentioned in Recommendations #3, #4, #5 | no |
| (ENG)_BiFi_Lending_Sooho_EN_Public.pdf | callProxy | unmatched — not counted | — | listed in file tree and analysis | no |
| (ENG)_BiFi_Lending_Sooho_EN_Public.pdf | interestModel | unmatched — not counted | — | listed in file tree and analysis | no |
| (ENG)_BiFi_Lending_Sooho_EN_Public.pdf | coinHandler | unmatched — not counted | — | listed in file tree and analysis | no |
| (ENG)_BiFi_Lending_Sooho_EN_Public.pdf | tokenHandler | unmatched — not counted | — | listed in file tree and analysis | no |
| (ENG)_BiFi_Lending_Sooho_EN_Public.pdf | handlerDataStorage | unmatched — not counted | — | listed in file tree and analysis | no |
| (ENG)_BiFi_Lending_Sooho_EN_Public.pdf | liquidationManager | unmatched — not counted | — | listed in file tree and analysis | no |
| (ENG)_BiFi_Lending_Sooho_EN_Public.pdf | managerDataStorage | unmatched — not counted | — | listed in file tree | no |
| (ENG)_BiFi_Lending_Sooho_EN_Public.pdf | tokenManager | unmatched — not counted | — | listed in file tree and analysis | no |
| (ENG)_BiFi_Lending_Sooho_EN_Public.pdf | oracle | unmatched — not counted | — | listed in file tree | no |
| (ENG)_BiFi_Lending_Sooho_EN_Public.pdf | oracleProxy | unmatched — not counted | — | listed in file tree | no |
| (ENG)_BiFi_Lending_Sooho_EN_Public.pdf | safeMath | unmatched — not counted | — | listed in file tree | no |
| (ENG)_BiFi_Lending_Sooho_EN_Public.pdf | token | unmatched — not counted | — | listed in file tree | no |
| (ENG)_BiFi_Lending_Sooho_EN_Public.pdf | IERC20 | unmatched — not counted | — | listed in file tree | no |
| (ENG)_BiFi_Lending_Sooho_EN_Public.pdf | interestModelInterface | unmatched — not counted | — | listed in file tree | no |
| (ENG)_BiFi_Lending_Sooho_EN_Public.pdf | managerDataStorageInterface | unmatched — not counted | — | listed in file tree | no |
| (ENG)_BiFi_Lending_Sooho_EN_Public.pdf | marketHandlerDataStorageInterface | unmatched — not counted | — | listed in file tree | no |
| (ENG)_BiFi_Lending_Sooho_EN_Public.pdf | marketHandlerInterface | unmatched — not counted | — | listed in file tree | no |
| (ENG)_BiFi_Lending_Sooho_EN_Public.pdf | marketManagerInterface | unmatched — not counted | — | listed in file tree | no |
| (ENG)_BiFi_Lending_Sooho_EN_Public.pdf | oracleInterface | unmatched — not counted | — | listed in file tree | no |
| (ENG)_BiFi_Lending_Sooho_EN_Public.pdf | oracleProxyInterface | unmatched — not counted | — | listed in file tree | no |
| (ENG)_BiFi_Lending_Sooho_EN_Public.pdf | safeMathInterface | unmatched — not counted | — | listed in file tree | no |
| (ENG)_BiFi_Lending_Sooho_EN_Public.pdf | tokenInterface | unmatched — not counted | — | listed in file tree | no |
| (ENG)_BiFi_Token_Hexlant_EN.pdf | Bifi | unmatched — not counted | — | The report states 'The Bifi contract is designed with the contract code provided by OpenZeppelin' and includes the full source code of ERC20.sol which defines the Bifi token contract. | no |
| (ENG)_BiFrost_BTC_Extension_CertiK.pdf | BTCTokenAdapter | unmatched — not counted | — | listed in scope table | no |
| (ENG)_BiFrost_BTC_Extension_CertiK.pdf | BTCEvents | unmatched — not counted | — | listed in scope table | no |
| (ENG)_BiFrost_BTC_Extension_CertiK.pdf | BTCDataStructure | unmatched — not counted | — | listed in scope table | no |
| (ENG)_BiFrost_BTC_Extension_CertiK.pdf | BTCStorage | unmatched — not counted | — | listed in scope table | no |
| (ENG)_BiFrost_BTC_Extension_CertiK.pdf | BTCDataStorage | unmatched — not counted | — | listed in scope table | no |
| (ENG)_BiFrost_BTC_Extension_CertiK.pdf | BytesModule | unmatched — not counted | — | listed in scope table | no |
| (ENG)_BiFrost_BTC_Extension_CertiK.pdf | SetDataStructure | unmatched — not counted | — | listed in scope table | no |
| (ENG)_BiFrost_BTC_Extension_CertiK.pdf | BTCEntryLogicExternal | unmatched — not counted | — | listed in scope table | no |
| (ENG)_BiFrost_BTC_Extension_CertiK.pdf | BTCInternalBase | unmatched — not counted | — | listed in scope table | no |
| (ENG)_BiFrost_BTC_Extension_CertiK.pdf | ResolverStorage | unmatched — not counted | — | listed in scope table | no |
| (ENG)_BiFrost_BTC_Extension_CertiK.pdf | ResolverStructure | unmatched — not counted | — | listed in scope table | no |
| (ENG)_BiFrost_BTC_Extension_CertiK.pdf | ResolverEntryLogic | unmatched — not counted | — | listed in scope table | no |
| (ENG)_BiFrost_BTC_Extension_CertiK.pdf | ScorePotStorage | unmatched — not counted | — | listed in scope table | no |
| (ENG)_BiFrost_BTC_Extension_CertiK.pdf | ScorePotStructure | unmatched — not counted | — | listed in scope table | no |
| (ENG)_BiFrost_BTC_Extension_CertiK.pdf | ScorePot | unmatched — not counted | — | listed in scope table | no |
| (ENG)_BiFrost_BTC_Extension_CertiK.pdf | ScorePotInternal | unmatched — not counted | — | listed in scope table | no |
| bifrost_bifi_audit.pdf | handlerViewProxy | unmatched — not counted | — | listed in scope table | no |
| bifrost_bifi_audit.pdf | siViewProxy | unmatched — not counted | — | listed in scope table | no |
| bifrost_bifi_audit.pdf | partialLiquidationUserReward | unmatched — not counted | — | listed in scope table | no |
| bifrost_bifi_audit.pdf | _applyInterestHandlers | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setNewCustomer | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | interestUpdateReward | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | withdrawableAsset | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | applyInterestHandlers | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | borrowAsset | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | borrowAssetSum | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | userDepositEXR | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | userBorrowEXR | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | unifiedPoint | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | _applyInterest | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | _updateInterestAmount | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | GlobalEXR | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | UserEXR | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | _getDeltaEXR | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | globalDepositEXR | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | globalBorrowEXR | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | _checkNewCustomer | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | interestUpdateRewardPerblock | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | interestRewardLastUpdated | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | managerDataStorage | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setInterestRewardUpdated | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setInterestUpdateRewardPerblock | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | deposit | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | reserveDeposit | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | _internalDeposit | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | _internalReserveDeposit | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | _calcInterestAmount | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | _calcGlobalInterestAmount | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | _checkFirstAction | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | blockDelta | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | handlerProxy | unmatched — not counted | — | listed in scope table | no |
| bifrost_bifi_audit.pdf | siProxy | unmatched — not counted | — | listed in scope table | no |
| bifrost_bifi_audit.pdf | onlyMarketManager | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | marketManager | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | updateRewardLane | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | rewardClaimAll | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | rewardUpdateOfInAction | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | updateRewardParams | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setCircuitBreaker | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | onlyBreaker | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | partialLiquidationUser | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | onlyLiquidationManager | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | handlerRegister | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | onlyOwner | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | ownerRewardTransfer | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | ownershipTransfer | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setBreakerTable | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setHandlerSupport | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setLiquidationManager | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setOracleProxy | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setRewardErc20 | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setTokenHandlersLength | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getCircuitBreaker | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getGlobalRewardInfo | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getMaxLiquidationReward | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getOwner | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getRewardErc20 | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getTokenHandlerBorrowLimit | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getTokenHandlerID | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getTokenHandlerInfo | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getTokenHandlerMarginCallLimit | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getTokenHandlerPrice | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getTokenHandlersLength | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getTokenHandlerSupport | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getUserCollateralizableAmount | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getUserExtraLiquidityAmount | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getUserIntraHandlerAssetWithInterest | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getUserLimitIntraAsset | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getUserTotalIntraCreditAsset | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setGlobalRewardDecrement | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setGlobalRewardPerBlock | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setGlobalRewardTotalAmount | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setLiquidationManagerAddr | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setRewardParamUpdated | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setTokenHandler | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setTokenHandlerSupport | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setAlphaLastUpdated | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setAlphaRate | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setManagerAddr | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setRewardParamUpdateRewardPerBlock | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setTokenHandlerAddr | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setTokenHandlerExist | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getAlphaLastUpdated | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getAlphaRate | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getGlobalRewardDecrement | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getGlobalRewardPerBlock | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getGlobalRewardTotalAmount | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getInterestRewardUpdated | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getInterestUpdateRewardPerblock | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getLiquidationManagerAddr | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getRewardParamUpdated | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getRewardParamUpdateRewardPerBlock | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getTokenHandlerAddr | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getTokenHandlerExist | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | applyInterest | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | borrow | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | repay | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | reserveWithdraw | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | withdraw | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | checkFirstAction | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setCircuitBreakWithOwner | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setTokenHandlerBorrowLimit | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setTokenHandlerMarginCallLimit | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setUnifiedTokenDecimal | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setUnderlyingTokenDecimal | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setMarketManager | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setInterestModel | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setHandlerDataStorage | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setErc20 | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setSiHandlerDataStorage | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getTokenName | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getTokenHandlerLimit | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getUserMaxBorrowAmount | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getUserMaxWithdrawAmount | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getSIRandBIR | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getUserMaxRepayAmount | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getERC20Addr | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getUserAmount | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getUserIntraDepositAmount | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getUserIntraBorrowAmount | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getDepositTotalAmount | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getBorrowTotalAmount | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getUserAmountWithInterest | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getTokenDecimals | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getUnifiedTokenDecimal | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getUnderlyingTokenDecimal | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getLimitOfAction | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getSiHandlerDataStorage | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getMarketManagerAddr | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getInterestModelAddr | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getHandlerDataStorageAddr | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | addBorrowAmount | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | addBorrowTotalAmount | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | addDepositAmount | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | addDepositTotalAmount | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | addReservedAmount | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | addUserIntraBorrowAmount | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | addUserIntraDepositAmount | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setActionEXR | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setAmount | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setBlocks | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setEXR | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setInactiveActionDelta | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setLastUpdatedBlock | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setUserAccessed | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setUserEXR | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | subBorrowAmount | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | subBorrowTotalAmount | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | subDepositAmount | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | subDepositTotalAmount | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | subReservedAmount | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | subUserIntraBorrowAmount | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | subUserIntraDepositAmount | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | syncActionEXR | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | updateSignedReservedAmount | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setBorrowLimit | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setCoinHandler | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setInterestModelAddr | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setLimitOfAction | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setLiquidityLimit | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setLiquiditySensitivity | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setMarginCallLimit | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setMarketHandlerAddr | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setMinimumInterestRate | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setReservedAddr | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getActionEXR | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getAmount | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getBorrowLimit | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getGlobalBorrowEXR | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getGlobalDepositEXR | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getGlobalEXR | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getHandlerAmount | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getInactiveActionDelta | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getLastUpdatedBlock | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getLimit | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getLiquidityLimit | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getLiquiditySensitivity | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getMarginCallLimit | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getMarketHandlerAddr | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getMinimumInterestRate | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getReservedAddr | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getReservedAmount | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getUserAccessed | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getUserEXR | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | claimRewardAmountUser | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | updateRewardPerBlockLogic | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getBetaRate | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getBetaRateBaseTotalAmount | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getBetaRateBaseUserAmount | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getMarketRewardInfo | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getUserRewardInfo | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setBetaRate | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setSIHandlerAddr | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setMarketRewardInfo | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setUserRewardInfo | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | updateRewardPerBlockStorage | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getRewardInfo | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getSIHandlerAddr | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | partialLiquidation | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | checkLiquidation | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getInterestAmount | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | viewInterestAmount | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | initialize | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | migration | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setHandlerAddr | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setHandlerID | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getHandlerAddr | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getHandlerID | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setOracleFeed | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getOracleFeed | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getTokenPrice | unmatched — not counted | — | — | no |
| theori-audit-rev-2.0.pdf | RewardLane | unmatched — not counted | — | The report repeatedly refers to a smart contract named RewardLane (e.g., 'RewardLane contract', 'Solidity code: RewardLane'). The scope section mentions 'Smart contract' but does not list a specific file. The contract name is inferred from the text. | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 118 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 132 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 271 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=5, low=1, medium=1
- Match method counts: n/a

Zero-match audit list:

- [2154] bifrost_bifix_audit.pdf
- [2155] (ENG)_BiFi_BIFROST_Extension_Theori.pdf
- [2156] (ENG)_BiFi_Lending_Sooho_EN_Public.pdf
- [2157] (ENG)_BiFi_Token_Hexlant_EN.pdf
- [2158] (ENG)_BiFrost_BTC_Extension_CertiK.pdf
- [2159] bifrost_bifi_audit.pdf
- [2160] theori-audit-rev-2.0.pdf

Fork inheritance lineage and inherited audits are included when available.
