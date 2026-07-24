# Agentic Audit Brief: Credit Coop

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Credit Coop (`credit-coop`)
- Website: [https://www.creditcoop.xyz/](https://www.creditcoop.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, avalanche, base, ethereum
- Contract surface: 116 unique implementations (336 raw deployments)
- Coverage basis: 0/7 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $4,628,036.82
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Credit Coop. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 7 contract row(s) across arbitrum, avalanche, base, ethereum. Structural roles: 6 core, 1 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 7
- Structural roles: core (6), unclassified (1)
- Contract kinds: contract (7)
- Detected standards: accesscontrol (4), erc165 (4), erc20 (4), erc4626 (4), pausable (4), ownable (2)
- Frameworks: openzeppelin (6), chainlink (4)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 25 contracts are derived from known codebases. 25 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x035a879278febf6a77807122a74c5e690f86fa77`, chain 1)
- UnnamedContract (`0x23b631e75300365b8e48b2ea549b420081313225`, chain 1)
- UnnamedContract (`0x433e415b0fa54c570c450dd976e2402e408cb6db`, chain 1)
- UnnamedContract (`0x507e5dea003299821961480a8dc42271febc89aa`, chain 1)
- UnnamedContract (`0x5e332f2770f509364bb6b2589de1bef3aaf3b7bc`, chain 1)
- UnnamedContract (`0x60c178501597637e7de4c152b37f836bae30be6c`, chain 1)
- UnnamedContract (`0x671b5b6f01c5fee16e6f9de2eb85ac027dc9fe0e`, chain 1)
- UnnamedContract (`0xb21eafb126cef15cb99fe2d23989b58e40097919`, chain 1)
- UnnamedContract (`0xc26a6fa2c37b38e549a4a1807543801db684f99c`, chain 1)
- UnnamedContract (`0xc40fbbe06d962570d1ebbe70d4a01a5f14b1c9a2`, chain 1)
- UnnamedContract (`0xc61694f0b9892645b72745289010c00de87ec94a`, chain 1)
- UnnamedContract (`0xf65c1fc58dda91266190819fe70c938c0342f6f4`, chain 1)
- UnnamedContract (`0x61a8606e04d350dfa1d1aaa68b37260746ae47d4`, chain 8453)
- UnnamedContract (`0xc4ab612fa31c041e39450fb963286f9e0b6c84ca`, chain 8453)
- UnnamedContract (`0xd7c718f45193ea3065654862faa8b0cbd2943c08`, chain 8453)
- UnnamedContract (`0xdfb94de0838b1989fbbb800042b17a6404692001`, chain 8453)
- UnnamedContract (`0xa22ba4aa3d738154f8a3bac0a6819dfa0dde8b14`, chain 42161)
- UnnamedContract (`0xc6df254f147dac8e0a891558e8e5d788a8c871be`, chain 43114)
- LendingVault (`0x6c99a74a62aaf2e6aa3ff08ce7661d5c86e01dbc`, chain 1)
- LendingVault (`0x6dacaf632017e2dfc929484606b0feb93088b623`, chain 1)
- LendingVault (`0x0cf11ac4ea33b6d7274cd7d6e7cea9f3f65fcf9d`, chain 8453)
- LendingVault (`0x214699b0ad2e26ffef0247fd0c244bb7fedc85ce`, chain 8453)
- LiquidStrategy (`0x6df7ff4b8c6743b3ded7bb3c8f21ce7f5b9d11f5`, chain 1)
- LiquidStrategy (`0x57184d7ec2d4cf5dbb77cde2d39e127391627e56`, chain 8453)
- LiquidStrategy (`0xe2c11985daf500cd4a3571c49cea0f6e041ce960`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 7; live-surface rows included: 7 (7 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 25/25 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/7 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 25 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 91 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Confirmed-live implementations: 25 of 116 unique; 91 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/25
- Verified + Unaudited implementations: 25
- Verified by bytecode match: 0
- Unverified implementations: 91
- Unique implementations: 116
- Raw deployments: 336
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (25)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CreditPositionToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 11 deployments: ethereum `0xd2332aa00525e2d898fe226f512a74c47d4b695f`; base `0x0284fca189ee95c8d68cfe91beb574447890b4df`; base `0x1aea7f6183d1872cb904b0e1af4c75b21ec7d79e`; base `0x214931d4878d36eadd191f4abc230f16b43c18cd`; base `0x30cd729166a9b2d104f021c46fd72aaec0c9e8bf`; base `0x4579deed7bb5d3c63db6ae7a9da7009ed820fa71`; base `0x9fe9c23c678ec4d59261818d666f63e2284168a3`; base `0xa8ab7bcfc5f11b6f04fec84fd743822559094387`; base `0xc0c39830d3a1056f82a16464681e522fce1cc1e4`; base `0xd059934dae81c70a34410198b210a114c097324a`; base `0xd4bb7a40ac6eb6191d24c7e80acb06242d9f6b41` | ⚠️ Unaudited |
| CreditStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8c65ceb54b64950e0d3e80cd5dadcd7ebbeef6d` | ⚠️ Unaudited |
| ERC7540Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 31 deployments: ethereum `0xd66faff834466c494be3303f36bacc52bda46d52`; base `0x0470a0bfc8c76526f4919675045ecc7d1c73c244`; base `0x0b9c1f07bf939c8ad14b65fbde5f15891b297ec0`; base `0x1080eaf98112075331eb56e0116caf37e9f4a320`; base `0x2384d9f3d38c0e00472a5649357893ea64efd2b3`; base `0x25a35393f8f011ab24af215cf5c56f38e75b5e36`; base `0x274946031d204567281f7616718b4abb940ef784`; base `0x2ba7ee80334fd72fa0dc6cf44a6ff39c3384d289`; base `0x45da946b162fde324527ead5ef8cf18bdc092c3f`; base `0x5f7f31e43a2a14709cb2b3167c66a4695a50bb6a`; base `0x71a1b3fca036437aef288464c8713e8c270797cd`; base `0x71f6cfdccc6ed62814cffcc2b6707f6ff2d477dd`; base `0x73a6aa1f63a4a56b1b822af7062495be0b8b6b8a`; base `0x7ac259cac2fdb46d8c1561d040f49e4c517b1197`; base `0x958341c2129891bb5cc6cb39133324059c02ae8f`; base `0x95dd2bd4aaa61e1eb16bb4eb6646820cfbd97648`; base `0x9c59ae1636537a958efd5fd03f194e6fcfccdd6a`; base `0x9d25a8a405b0f6346f3840dac2d466682020e966`; base `0x9fb590698d1ee7e4692f659f1644e31f1e4245a8`; base `0xa3b3cf68d8fa75e7654d095d11309ecfe6980d1d`; base `0xab31e0ff05549816d5762914f9facc96cfdfdf1e`; base `0xbdb43e12dec863e968ff128b638161b979477af3`; base `0xc256e562896a11d084d3aae7ccaec795ab6bd4ca`; base `0xd2332aa00525e2d898fe226f512a74c47d4b695f`; base `0xd66faff834466c494be3303f36bacc52bda46d52`; base `0xded99bb39307afcac42bec7a33c616d0c81c6fbc`; base `0xe0e100723cfafa6a066221d056683eab813bdc32`; base `0xe32cba11995892b5100a6c97975f20cf33033646`; base `0xed86f27269503c106eab8182d8540816c25df038`; base `0xf1a5cb62f8d65a046770732d3e6e12057815b432`; base `0xf5e07e09b9c079ad045f8405bc3e249abad46a19` | ⚠️ Unaudited |
| Escrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x55e3acf90ec2df0603ffbc7c8c4a4e1e402c4493`; base `0xb2a475abeeec287fdfda37f6977803989e388f53`; base `0xd3ac493cd5f02a5376849ccb494f233323aabe85` | ⚠️ Unaudited |
| EscrowFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 34 deployments: ethereum `0x144b887b5ec076e4854279595131436869bf5ce8`; ethereum `0x3e420bc2641f3e8297dc0b5bb6d6e5aa68449ed7`; base `0x0d9b66519274ccda53d516da1299d83a2e80edc7`; base `0x1a0a22d988c31b41da620647d15690c4757a0975`; base `0x1c720356ae3750832085d11f3154cd74fbc61f75`; base `0x21d2e69e532446ab0102573ed867eefe39f25c62`; base `0x2238eea72728d40b5e561633ab162a7f9c32b1eb`; base `0x233b9f793f1604a48b765eb681cf8d37cfbd2caf`; base `0x2492ef0f83f7041867ec067582d5157290e09b06`; base `0x3519ae2b4ef92727e7635711a72a34da68d51471`; base `0x37441d03476ad06f9f57bcbf8975173934b0a1ce`; base `0x3b345717e4888a29cc60d68235d0df30604fd248`; base `0x3e420bc2641f3e8297dc0b5bb6d6e5aa68449ed7`; base `0x41607ed83a6d1d07ba2b3d14edc9b721de3e6368`; base `0x456821be6968a4e7424c128a6795d5ad53accd03`; base `0x4c011ebfada5f73e0471f31a82fdbd06b4338825`; base `0x77757b1587063bdd1437e0cdbd2f57d0d180e638`; base `0x7a92eb6084134a7f7d7ec5035c5d80b0aef49f22`; base `0x7d3bf73c9c05abfa4538eeaee989ce62eccc53d7`; base `0x90c19b8341fa566d372f983c28878189d0089c9c`; base `0x928ea9825186afd9b19d967651c0f8d580032c33`; base `0x937d68706abafc2c4146d11f8c06f9c5d463e996`; base `0x970011fcfb5e57b3e8230a47645605f0019f72a9`; base `0x9e214188528b1450941b8fac7cc7c78093b159f0`; base `0xa1f05416401f40207730a2d3c1bbd6acba9d0fa1`; base `0xa526e7153cf4d3a16c345220c73066c9d1b48d15`; base `0xa86c8425161590437a13b25211dc3973662a48c9`; base `0xacf00146850e5363e55770043a75e7cafd6b5028`; base `0xb52eb2f74261e6ced854336d5bcdf9d6a8966a66`; base `0xdf683975919ec8386c4bd9ac6466cc1bd9e288df`; base `0xe7cc1a0c7f04b850a61fefdd5418c8a8c6ceaac6`; base `0xf9d715c8d38ef91a6627c4a19a78a55f4d36a7e4`; base `0xfa164a1363e75a71fe7efb1f1ae4edda422c5226`; base `0xfc311908fd98965c7c51f3a94b5b71ba3db4b535` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x833589fcd6edb6e08f4c7c32d4f71b54bda02913` | ⚠️ Unaudited |
| LaaSEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x0484a93a3ed66d9a5488280909c946c2fd925f46`; base `0x3182c0f682b84d0586f7d2c38fa24a7e720d2359`; base `0xd6d28ba1b89a0e8fcd63251858d05b373a32cde4` | ⚠️ Unaudited |
| LendingVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-382505 | `0x6c99a74a62aaf2e6aa3ff08ce7661d5c86e01dbc` | ⚠️ Unaudited |
| LendingVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-382507 | `0x6dacaf632017e2dfc929484606b0feb93088b623` | ⚠️ Unaudited |
| LendingVault | core_logic | project_anchor | own_supporting | 0 | base | unit-382526 | `0x0cf11ac4ea33b6d7274cd7d6e7cea9f3f65fcf9d` | ⚠️ Unaudited |
| LendingVault | core_logic | project_anchor | own_supporting | 0 | base | unit-382528 | `0x214699b0ad2e26ffef0247fd0c244bb7fedc85ce` | ⚠️ Unaudited |
| LendingVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 29 deployments: ethereum `0xecfd3e9333dd3d06588ed368e4696480aba6fa63`; base `0x025bf5f8382756434bfd2e9bb6f34c84f2244eea`; base `0x059c04023c096fdc1079b118b2fc9b7b3600b478`; base `0x0ee193f926bae9eed1bb8cb678f2fc73dbe324f4`; base `0x1506defbf0dadf50868ee5336f91f54bf7f69fdc`; base `0x1bf220b4e6e5eca30d90a12ea369a68633c0065a`; base `0x1c4226eb7e7d2fa8a92ad0e181abe5718aebf83d`; base `0x2063ccfbd3e88ce3ea64ca271a7d8b58ebcf54f3`; base `0x2677729380ffab1b66fb062f00f1e60cd63db0a3`; base `0x2b721a999b83cbcc1dbd697a27199d5b4be70102`; base `0x30b0af85e0c377dc31cc92833677af4d796e3834`; base `0x32ccda597abf36ac712138c9b9a3e2a6406b88dc`; base `0x38aad4f2fb619cb7fc5547f1c23d2ff7ca10d76c`; base `0x3f7a449b8b1ff0bfa86cd823a86eec5c3fdbab23`; base `0x445b79ec6bedbd03c90c93a9141803b40ef02801`; base `0x49069ef31424f9fcb80b66feee631dd0358c57a3`; base `0x49cb1bfc670148d45cc2c06b4c34b3bddb0d7512`; base `0x58f9e60e550b31281b9cff942167ce72f45089f3`; base `0x62d5069904be3ede95ea0dbcb0f202575a840e61`; base `0x6df7ff4b8c6743b3ded7bb3c8f21ce7f5b9d11f5`; base `0x7894ff49d096f7bc101e149af9c41e88e2e43e20`; base `0xab2891f34e35aa9d23fb2459f50499a4c1f4abd4`; base `0xb53d9a5fe013dd0806bc090cce97355a987c4e59`; base `0xb8e3649f0cfc94e0dbd18db35b7f66ff1cec6e8c`; base `0xb95458a7643f599d466c28a0b6e55b0d1bb46326`; base `0xbabd231870f0c2c78e038fe2731c4f7f13016d87`; base `0xe7d9b57d9e3bf3f4d5dbea98dd93acff0bdd6b5e`; base `0xecfd3e9333dd3d06588ed368e4696480aba6fa63`; base `0xf6b443a3812659f3c2bce28c5f3624c249e52221` | ⚠️ Unaudited |
| LineFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 32 deployments: ethereum `0x353aa86096063b1ca39d9e7f124e10d1b597bcf7`; ethereum `0xfff5ff2191ee3e0df605b13fe3036015414080e7`; base `0x0dd377086fa94407334d751a5164afd981513b55`; base `0x1b15e15d26401b03b2036b5bca69985f70d473ca`; base `0x1e43011619659b71e198fa5bd36be43e3fba00e6`; base `0x315b46be86e5410315f8dc5528264dc940445a47`; base `0x34381047e5e779147352d8770d281e6a1eab5a6c`; base `0x383cd8c96d97581ec6d1d7506dff60ee7c08bf7b`; base `0x3ef727a7138c7acbe8d4f940c0db7d922c09b6ca`; base `0x54076604c77b0d048901f25feb1bb77954e24bde`; base `0x589f194c2fcb0c801045e0a1fd8687e2345730b9`; base `0x5e14f4c61f1e29c808893fa2c2185eec8ba7eda4`; base `0x5fcce834f5294f4854434c5c61488bb501a8b3b2`; base `0x6bc8367265b27398774da8215a38874ae874ff5e`; base `0x72ffee7d9b87175249704f4739b499adc14fab76`; base `0x73cb72a7efaddd99cdd2d110e2f4b8b65bf3b812`; base `0x74cca17dce71d8f80665686cd1eeda32b2f6043d`; base `0x7ebc848a16a943442855c764382d24019da3497a`; base `0x87d33efb67abfc0326bbb1a3b9f67cbb5ac1a596`; base `0x94d43a2d15a68c3d604afee7f4f11b4c53bb178a`; base `0x9e89346ddbf277a03d24d488a7d584380b7a2f2a`; base `0xae240ad17d03f42263e6f42d0e7cfa0523e3cefb`; base `0xba192639164f9e5dc6f4a4cb0f2a79e13077ec27`; base `0xd13e9f92463a848d11816e02d1e3179ee9d7820e`; base `0xebd3512d2c9d5a2a8c28223c40a901b69558f4a0`; base `0xf2080a439704013c22e1a94f3c96090159f44628`; base `0xf5393909bdd8fb934ea790ea6a88601ef95f105f`; base `0xf6befd488768c07bc2f3fe8c734513766505f5fb`; base `0xf95a56ab8d49f09f662744c47a426b9bbe014c7b`; base `0xf9b32c9ee0882f57953528aa7b9287414ef7fd79`; base `0xfebf92701424c9d1bbbe5b4ae1ee139a1143b895`; base `0xfff5ff2191ee3e0df605b13fe3036015414080e7` | ⚠️ Unaudited |
| LiquidStrategy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382509 | `0x6df7ff4b8c6743b3ded7bb3c8f21ce7f5b9d11f5` | ⚠️ Unaudited |
| LiquidStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 12 deployments: ethereum `0x11eee9a3c60a74ed55da84157036dd0278be8a59`; ethereum `0xd462e8929282495a6f9196c30639cde8d687ac14`; base `0x07aaed2072e19519cbb03c3b1879ea882e5827dc`; base `0x402c6b172b0a30cedbbc2bcdad025470853489e5`; base `0x43e7f959570d0914fea8eabe0fcd3f9446e13a50`; base `0x454747265794f2da61c65bc33ed209a2b2753f1e`; base `0x49577d3e5ed6990d96320af6bc8b6b7e1948b175`; base `0x7707f5a188895c1d245768744ca81a1e0c0fe982`; base `0x9ee0f8685e5cfc9dd0f35a1f404982e5880a292f`; base `0xa0e8abf1dba504d4f974d64c0a009abc0d51585a`; base `0xbeb0abbd47db53a2ceb0bd8eea70260723cc1263`; base `0xf9adb7758cd9260c17c2d5228ed9be1ffcc8f9cb` | ⚠️ Unaudited |
| LiquidStrategy | core_logic | project_anchor | own_supporting | 0 | base | unit-382530 | `0x57184d7ec2d4cf5dbb77cde2d39e127391627e56` | ⚠️ Unaudited |
| LiquidStrategy | core_logic | project_anchor | own_supporting | 0 | base | unit-382539 | `0xe2c11985daf500cd4a3571c49cea0f6e041ce960` | ⚠️ Unaudited |
| OnlyOwnersGuard | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0cdc148eae17e7c865c5c2fdcdb96252276f0699` | ⚠️ Unaudited |
| Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 32 deployments: ethereum `0x6315b9ab8c81e8d7868a9795ec0e25d4d62e8757`; base `0x009409a383aedb170b47a0f05a2b32a1d3edb6f1`; base `0x1b32287dc71ddf63e475a68b693919f534e06712`; base `0x267ec4aaff884ca1330197fe33861505947a0724`; base `0x2e18fa4917f9f2a35de0313314762a4435291254`; base `0x2e26663c078a74c7fb769ed8dcf22cf293a3524b`; base `0x42e9290fcd214adc5721f15295e6935aa56e03dd`; base `0x500d81a28ff197cd74902c1e0a33c2d49e4d6356`; base `0x533fd82d0b4d8eb77dfcd0f3e4ff7bcd824c10f2`; base `0x5471bc932c013ab44d9820feb3f1de39b5a3d92c`; base `0x551f3579aaf1fd71cb18d3e89006e971b4a9bf67`; base `0x576f489433aff29ddab6203db77297361a888fa1`; base `0x5f5c37590d462dd308be988be81e0218497887bd`; base `0x60e4a57bd1e44cbaee00f2f807339eccf49ea40e`; base `0x611cf3cda7c58906f2171fae2248b1788ba822de`; base `0x6315b9ab8c81e8d7868a9795ec0e25d4d62e8757`; base `0x6b7d595b4be737fd58967cda0d53ee9d0537e075`; base `0x7008971b8e03ef6f88a2bbf78e7855a9b1ed24d7`; base `0x7b1f3d386544bd13b2c067818081b9bfdeed281d`; base `0x83c8b620ceff6e62f81bf8d223aadc85176c9769`; base `0x87d267f6fc370fc0daf54237f6f36783085ab98c`; base `0x928405643b6c4c7dc52ad74b159e6785197c4c1a`; base `0x9bf3d977e84841803c2af0987169f019d35fcaa7`; base `0xab0837fd39ce300dfc79fbd0a05c72105caef03e`; base `0xb35a586f507567b19150416f78e3a82c329e34cc`; base `0xce95035acd9b5ae1304f652412db849f8629f377`; base `0xd19d2b5b0330e64de91b339e040719cfa88bc2b0`; base `0xd386492a29d97e59acdf313428efbc8357dbcfd2`; base `0xdacae620e040b210802d984f097cf6c4e9f740ee`; base `0xe76b73c560843ce2ff4459895a451ced2f64e93a`; base `0xe8603de00c293f9c89b383dc0fcc7fce2262c4e2`; base `0xf0dfbcf5920966cc2a5c4fe1d0bae74ebe38a89e` | ⚠️ Unaudited |
| SimpleBorrowerContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: base `0x42873a6792d50e1d11d2498737ad8413b4b07144`; base `0x46271dc3ab490a9dea0ba95ca0788f0fb239dafd`; base `0x9f7de3fe62aa78cddd9d4cef0a967095e7be99fc`; base `0xa2cf482793326b9474dd46faad091902c008ab14`; base `0xf658cc2a9550bd7a8a923747c98b814b5657f01f` | ⚠️ Unaudited |
| SingleAssetStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: base `0x263dbfeb1ffd79f8552a10b595da9436f7ac07ba`; base `0x3aa8acb58dfbbf775cbae2cfa22c921ac2adc241`; base `0x4349c6ceb045a7263a91fa9ae3d4bfe83136d348`; base `0xacf337a069ef9bda5663a9021a896bbd76528759` | ⚠️ Unaudited |
| SpigotFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 33 deployments: ethereum `0xc37af9a4f698a58921850e5943ad94978d92173b`; ethereum `0xc779aaa8c0952fa30675f6f35920cc058f7a1643`; base `0x1842436729d81e573d3051733e31403bf188af68`; base `0x20d65cd29daddca6994071fcaa631e2f99f1d9ca`; base `0x221061c0a3283ce7db5e187503311fc6651cafb9`; base `0x26481dd7c2a5b22568efa27ca839d99064e36406`; base `0x30561f7b8fe61dae2c9f10ca7ec92bbadb0314fc`; base `0x32b810cdb8e34a38e0f00707d03624ede0eda5fb`; base `0x32d7e1cc00b9924970a6e2df2f7dd445b9512d5c`; base `0x360b330f47a9b2f54aa53a962911366b37c35ae0`; base `0x3ae96430f2555df6208cb50a91f5133057c870bc`; base `0x44a4e6d51fe4b1894d170e7fbd450d9337b62b2c`; base `0x5ccfae77c7ea879e5256f84b0b1a13e2c526cf7e`; base `0x6654e7c8c6e28abfd86b921508911d4ba1b8ac33`; base `0x6766e3759ef055398327db19cf95f95a36b4f772`; base `0x72c9c28f24e4c209f8e46265853fc45b20f2db0c`; base `0x74ec9f0cfdaad2b34e73ca19f26e2b5300ac876e`; base `0x798a772401d9f15aebbedb178b047c0f823970ea`; base `0x7d395906af98f04a7e3a217f33d3f9f101dbcdd2`; base `0x7dd346d24480ca00c417ba738d8abeeabfc7962c`; base `0x88a29e05077977d2a4c15e8ba631322f38557081`; base `0x8c9a122c8e35ea0ec5f9fe4204c1d5ad3195eb8e`; base `0x9fe92f04563a0894bb9c7f575f75e7184376cb12`; base `0xa5de6e2a9503e227ca345f8aeb795a187a32f34e`; base `0xac1cc0887a5cc723febacfa6a1fb2f7d33f4ca1c`; base `0xad7c7fc7f812c11f924ffbae2e0183e4916f6aae`; base `0xb5545b8160400d0b4b76096e587270090e0fc9ae`; base `0xc37971f6d3a9fff6528872153310d318ac33660c`; base `0xc71df3f82d2aace7e64438009068fb0a97cdfe8f`; base `0xc779aaa8c0952fa30675f6f35920cc058f7a1643`; base `0xd049953ee9af60c36b364bc94258c9d0e35dedb2`; base `0xe86cbd4306afe8075be517d4cfb9b7fca82c9b20`; base `0xf2a33503dd998ee835a944be243f08b0c5d86e0b` | ⚠️ Unaudited |
| StableSwapAboveThreshold | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3ad165b61c711dee010817692c1be40c6805415a`; ethereum `0xcdb3ebdcb29d2fcdf6bd4f6b21528899483ce07c` | ⚠️ Unaudited |
| StableSwapGuard | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3429ce43339939ef627decfa05530c0d7e41ef59`; ethereum `0xb2275bf955690c0d2b175d9cdc357e9d06694bbd`; ethereum `0xde725190e345d8e4de589e8a201395141cd2b5a4` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (91)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00bcbfb77a1d50b200e0d0b5757fa5c88f27e2b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x029152ec4082e728ef0fb9c8bde1b668358648bd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382489 | `0x035a879278febf6a77807122a74c5e690f86fa77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06e5e43210e76149996f344edfc09d432fcaebc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x075893244f3e18658be71ea00e7bd4f5228abcfd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x143ca632fdd00218a47e6be8a117a5595c4b5e5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ae7db7e940ee1999c51be2ca501b0ea1ec0f0a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x204dd274f265f6599d7cc8dfdfa519005a0331bb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382492 | `0x23b631e75300365b8e48b2ea549b420081313225` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x269f9bd3da55b8119d00b03c1842497c9a80c468` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2fa0c1014b279981ff699e74e0dee93ef777d99c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x382cc36bb56cfaa7aa5f6cdd5f569ce0712b7ba1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x386d3351849e76f1e8d0bb72ebfce246fde43b9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3986081de97eab5128a99c852466728dd1d9b22f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3cbe25f3a84cd3f65ee759d6938dbb4fc935ac06` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382494 | `0x433e415b0fa54c570c450dd976e2402e408cb6db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x446912df9f54cf08fa4fe1bdde9e3e09e39c09ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49a04826f704cf2dfcd5d08be565871b00932b67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49fc4aaf1dd6c3c1b4404cb86f993f6a6675e4c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e004a9dccf9bb7f0b13970158acc571aba4f1ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f442e6baf3dea938ca3744ce039b4fe2c3c4622` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382496 | `0x507e5dea003299821961480a8dc42271febc89aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5250c45087cdaa3daccbe44bda987a1f7f3edb02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5762d2e91e1db2d72843d27b1bc26e4d10c636ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a4aaf300473eaf8a9763318e7f30fa8a3f5dd48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d3d7937903556e511a9d19a813c957d5f538f85` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382498 | `0x5e332f2770f509364bb6b2589de1bef3aaf3b7bc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382501 | `0x60c178501597637e7de4c152b37f836bae30be6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x639e0ca021d551047eb5c8ed67e004e58acbe3ee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382503 | `0x671b5b6f01c5fee16e6f9de2eb85ac027dc9fe0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ce912959f7641eaa207996c68f40f61e09b7ad7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e0b15415029a3f858ea9585f50d35e689dca0ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x829510cfc7969f5b8b7ff3cbe970480e5a675ab8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85a8600d6dc2a2bbff0a2282cda18cd70f365d8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e73667b175887b106a9f803f8b62deffc11535e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f6813ce50a201d77637b8d24e99feaaa6ab0bd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x916ad101ad15815e1badedb58daf22dcae2fbc2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94a5da097d3f27962980ab1a1761cd9e7456252e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9855b3c464c5b9f5027e79aa2177284dccfe4f22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9dc5f61dc380bbc3ffbf62ea1d485bb6122aa9db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9eab5422288805b59391d1442e29fa16a04a0b22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0342d8004fcc6e007e842c99dc2df7a9d646e8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa35946ecc553cf267b590fed9aa7c32ca68cf100` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa43508ceddbc3067f236f05b98aea7aad943a467` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5c5f0c572c0f843d4234c6316d75fbd5a9c5bf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa968954770af47881309d99e36d61c725082b48e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaaaebdbee1424022210eecf24f56b92953f6e21e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382512 | `0xb21eafb126cef15cb99fe2d23989b58e40097919` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb50586b898aa89ae616ca584b08d2710fe2b8140` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbcf03066623b7425661fa1e21bf9cf83ec73a279` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe36c2c93521c836a45b624960d5679a188b401f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382513 | `0xc26a6fa2c37b38e549a4a1807543801db684f99c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382515 | `0xc40fbbe06d962570d1ebbe70d4a01a5f14b1c9a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc45677cf45080df035fd4f2df082ae47eaca729e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc468a4c38e5484d5e1d8058d6b75ec4a10ba305a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382517 | `0xc61694f0b9892645b72745289010c00de87ec94a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb442fdf4462123a99da3627d5ad4115f6323c0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce7a67af29674928906a325cc967648b42bf8c52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd008d9b4e08dcdaf7f68dae936ef5cb5fb84f3f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd268414d6ee00a5159950384d72c483898f060c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb8a90c397febc83d5840a02703a3c62d3e234c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf146a765ea280dfbf1c98163fd894e4695867fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdfc12a6ca44587d0032dc385309b2aacd3381799` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6456660c621ee0108679b83a729f861fa5f62e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe725e25961e04e685a573b1587f8297ac233cd07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee2c848181ea4a26b0cb06f0cbf472126f6d5097` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf02b1843cae1a65a7cbd14c13251b4ec9ff23d78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf320c5ed39d518f7e2b6bad94e3e16d750ee1d08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf3b45563e13dc813ae8126670b6e10ed27351412` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382520 | `0xf65c1fc58dda91266190819fe70c938c0342f6f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0b41059984b715299abdf0bac82ebf8eb59ff4c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1fd26afa7d4408fba579767ac686ad01a718d81d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2934985dd00c076be4dd6ad9aea7497193c19320` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x326d4f7d39d7a8e817872aa756d7deab5f33ff0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5365bb5c3acd705f639ebecc9a2dea4c65a3566f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5591ed6975e6c893a4ea7d0b2573b10942a3bf47` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382532 | `0x61a8606e04d350dfa1d1aaa68b37260746ae47d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x717f1f3288e6b88297579f4c0182db89b42eea72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7951f954efd9e24b7d361a62edd2ab06bc1182bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9dbee9024c5dbd990783157c66ac65066cf277e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa56e4d26c569693f3974558fde88f41c28af16a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb7696467353eaa929eedb94b9064c753c5f949e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbf2d49ecfe657132f34863263d654d8e2eb1d72e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382534 | `0xc4ab612fa31c041e39450fb963286f9e0b6c84ca` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382536 | `0xd7c718f45193ea3065654862faa8b0cbd2943c08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdf655b599526c96ddc0223b9f9e0682fa0e7761a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382537 | `0xdfb94de0838b1989fbbb800042b17a6404692001` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf1baa8242e3aaf65d4eb030459854cdde209acb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf3db1becd851b3e166e431ead908381b5f76a9c9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382522 | `0xa22ba4aa3d738154f8a3bac0a6819dfa0dde8b14` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-382524 | `0xc6df254f147dac8e0a891558e8e5d788a8c871be` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 303
- Live contracts: 1
- Unknown liveness contracts: 302
- Source-verified contracts: 231
- Currently scope-matched contracts retained as-is: 0
- Classification counts: candidate review=57, contamination review=6, exact address book overlap=1, source verified unclassified=167, unverified unclassified=72

Showing first 200 of 303 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| candidate review | ERC7540Factory<br>`0xd66faff834466c494be3303f36bacc52bda46d52` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5286a42674a990b224f33cbfe56f513ae7a08727` |
| candidate review | ERC7540Factory<br>`0x0470a0bfc8c76526f4919675045ecc7d1c73c244` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| candidate review | ERC7540Factory<br>`0x0b9c1f07bf939c8ad14b65fbde5f15891b297ec0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| candidate review | ERC7540Factory<br>`0x1080eaf98112075331eb56e0116caf37e9f4a320` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| candidate review | ERC7540Factory<br>`0x2384d9f3d38c0e00472a5649357893ea64efd2b3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| candidate review | ERC7540Factory<br>`0x25a35393f8f011ab24af215cf5c56f38e75b5e36` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| candidate review | ERC7540Factory<br>`0x274946031d204567281f7616718b4abb940ef784` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| candidate review | ERC7540Factory<br>`0x2ba7ee80334fd72fa0dc6cf44a6ff39c3384d289` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| candidate review | ERC7540Factory<br>`0x45da946b162fde324527ead5ef8cf18bdc092c3f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| candidate review | ERC7540Factory<br>`0x5f7f31e43a2a14709cb2b3167c66a4695a50bb6a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| candidate review | ERC7540Factory<br>`0x71a1b3fca036437aef288464c8713e8c270797cd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| candidate review | ERC7540Factory<br>`0x71f6cfdccc6ed62814cffcc2b6707f6ff2d477dd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| candidate review | ERC7540Factory<br>`0x73a6aa1f63a4a56b1b822af7062495be0b8b6b8a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| candidate review | ERC7540Factory<br>`0x7ac259cac2fdb46d8c1561d040f49e4c517b1197` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| candidate review | ERC7540Factory<br>`0x958341c2129891bb5cc6cb39133324059c02ae8f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5286a42674a990b224f33cbfe56f513ae7a08727` |
| candidate review | ERC7540Factory<br>`0x95dd2bd4aaa61e1eb16bb4eb6646820cfbd97648` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5286a42674a990b224f33cbfe56f513ae7a08727` |
| candidate review | ERC7540Factory<br>`0x9c59ae1636537a958efd5fd03f194e6fcfccdd6a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| candidate review | ERC7540Factory<br>`0x9d25a8a405b0f6346f3840dac2d466682020e966` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| candidate review | ERC7540Factory<br>`0x9fb590698d1ee7e4692f659f1644e31f1e4245a8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5286a42674a990b224f33cbfe56f513ae7a08727` |
| candidate review | ERC7540Factory<br>`0xa3b3cf68d8fa75e7654d095d11309ecfe6980d1d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| candidate review | ERC7540Factory<br>`0xab31e0ff05549816d5762914f9facc96cfdfdf1e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| candidate review | ERC7540Factory<br>`0xbdb43e12dec863e968ff128b638161b979477af3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| candidate review | ERC7540Factory<br>`0xc256e562896a11d084d3aae7ccaec795ab6bd4ca` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| candidate review | ERC7540Factory<br>`0xd2332aa00525e2d898fe226f512a74c47d4b695f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5286a42674a990b224f33cbfe56f513ae7a08727` |
| candidate review | ERC7540Factory<br>`0xd66faff834466c494be3303f36bacc52bda46d52` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5286a42674a990b224f33cbfe56f513ae7a08727` |
| candidate review | ERC7540Factory<br>`0xded99bb39307afcac42bec7a33c616d0c81c6fbc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| candidate review | ERC7540Factory<br>`0xe0e100723cfafa6a066221d056683eab813bdc32` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| candidate review | ERC7540Factory<br>`0xe32cba11995892b5100a6c97975f20cf33033646` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| candidate review | ERC7540Factory<br>`0xed86f27269503c106eab8182d8540816c25df038` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| candidate review | ERC7540Factory<br>`0xf1a5cb62f8d65a046770732d3e6e12057815b432` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| candidate review | ERC7540Factory<br>`0xf5e07e09b9c079ad045f8405bc3e249abad46a19` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| candidate review | LendingVaultFactory<br>`0x025bf5f8382756434bfd2e9bb6f34c84f2244eea` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| candidate review | LendingVaultFactory<br>`0x059c04023c096fdc1079b118b2fc9b7b3600b478` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| candidate review | LendingVaultFactory<br>`0x0ee193f926bae9eed1bb8cb678f2fc73dbe324f4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| candidate review | LendingVaultFactory<br>`0x1506defbf0dadf50868ee5336f91f54bf7f69fdc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| candidate review | LendingVaultFactory<br>`0x1bf220b4e6e5eca30d90a12ea369a68633c0065a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| candidate review | LendingVaultFactory<br>`0x2063ccfbd3e88ce3ea64ca271a7d8b58ebcf54f3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| candidate review | LendingVaultFactory<br>`0x2677729380ffab1b66fb062f00f1e60cd63db0a3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| candidate review | LendingVaultFactory<br>`0x2b721a999b83cbcc1dbd697a27199d5b4be70102` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| candidate review | LendingVaultFactory<br>`0x30b0af85e0c377dc31cc92833677af4d796e3834` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| candidate review | LendingVaultFactory<br>`0x32ccda597abf36ac712138c9b9a3e2a6406b88dc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| candidate review | LendingVaultFactory<br>`0x38aad4f2fb619cb7fc5547f1c23d2ff7ca10d76c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| candidate review | LendingVaultFactory<br>`0x3f7a449b8b1ff0bfa86cd823a86eec5c3fdbab23` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| candidate review | LendingVaultFactory<br>`0x49069ef31424f9fcb80b66feee631dd0358c57a3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| candidate review | LendingVaultFactory<br>`0x49cb1bfc670148d45cc2c06b4c34b3bddb0d7512` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| candidate review | LendingVaultFactory<br>`0x58f9e60e550b31281b9cff942167ce72f45089f3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| candidate review | LendingVaultFactory<br>`0x62d5069904be3ede95ea0dbcb0f202575a840e61` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| candidate review | LendingVaultFactory<br>`0x6df7ff4b8c6743b3ded7bb3c8f21ce7f5b9d11f5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5286a42674a990b224f33cbfe56f513ae7a08727` |
| candidate review | LendingVaultFactory<br>`0x7894ff49d096f7bc101e149af9c41e88e2e43e20` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| candidate review | LendingVaultFactory<br>`0xab2891f34e35aa9d23fb2459f50499a4c1f4abd4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| candidate review | LendingVaultFactory<br>`0xb53d9a5fe013dd0806bc090cce97355a987c4e59` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5286a42674a990b224f33cbfe56f513ae7a08727` |
| candidate review | LendingVaultFactory<br>`0xb8e3649f0cfc94e0dbd18db35b7f66ff1cec6e8c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| candidate review | LendingVaultFactory<br>`0xb95458a7643f599d466c28a0b6e55b0d1bb46326` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| candidate review | LendingVaultFactory<br>`0xbabd231870f0c2c78e038fe2731c4f7f13016d87` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| candidate review | LendingVaultFactory<br>`0xe7d9b57d9e3bf3f4d5dbea98dd93acff0bdd6b5e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| candidate review | LendingVaultFactory<br>`0xecfd3e9333dd3d06588ed368e4696480aba6fa63` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5286a42674a990b224f33cbfe56f513ae7a08727` |
| candidate review | LendingVaultFactory<br>`0xf6b443a3812659f3c2bce28c5f3624c249e52221` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| contamination review | StableSwapAboveThreshold<br>`0x3ad165b61c711dee010817692c1be40c6805415a` | non_address_book | unknown | unknown | verified | n/a | `0x5286a42674a990b224f33cbfe56f513ae7a08727` |
| contamination review | StableSwapGuard<br>`0x3429ce43339939ef627decfa05530c0d7e41ef59` | non_address_book | unknown | unknown | verified | n/a | `0x5286a42674a990b224f33cbfe56f513ae7a08727` |
| contamination review | EscrowFactory<br>`0x0d9b66519274ccda53d516da1299d83a2e80edc7` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| contamination review | LineFactory<br>`0x0dd377086fa94407334d751a5164afd981513b55` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| contamination review | Oracle<br>`0x009409a383aedb170b47a0f05a2b32a1d3edb6f1` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| contamination review | SimpleBorrowerContract<br>`0x42873a6792d50e1d11d2498737ad8413b4b07144` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| exact address book overlap | LiquidStrategy<br>`0x6df7ff4b8c6743b3ded7bb3c8f21ce7f5b9d11f5` | project_anchor | unknown | live | verified | n/a | `0x5286a42674a990b224f33cbfe56f513ae7a08727` |
| source verified unclassified | CreditPositionToken<br>`0xd2332aa00525e2d898fe226f512a74c47d4b695f` | non_address_book | unknown | unknown | verified | n/a | `0x5286a42674a990b224f33cbfe56f513ae7a08727` |
| source verified unclassified | EscrowFactory<br>`0x144b887b5ec076e4854279595131436869bf5ce8` | non_address_book | unknown | unknown | verified | n/a | `0x5286a42674a990b224f33cbfe56f513ae7a08727` |
| source verified unclassified | EscrowFactory<br>`0x3e420bc2641f3e8297dc0b5bb6d6e5aa68449ed7` | non_address_book | unknown | unknown | verified | n/a | `0x5286a42674a990b224f33cbfe56f513ae7a08727` |
| source verified unclassified | LineFactory<br>`0x353aa86096063b1ca39d9e7f124e10d1b597bcf7` | non_address_book | unknown | unknown | verified | n/a | `0x5286a42674a990b224f33cbfe56f513ae7a08727` |
| source verified unclassified | LineFactory<br>`0xfff5ff2191ee3e0df605b13fe3036015414080e7` | non_address_book | unknown | unknown | verified | n/a | `0x5286a42674a990b224f33cbfe56f513ae7a08727` |
| source verified unclassified | LiquidStrategy<br>`0x11eee9a3c60a74ed55da84157036dd0278be8a59` | non_address_book | unknown | unknown | verified | n/a | `0x5286a42674a990b224f33cbfe56f513ae7a08727` |
| source verified unclassified | Oracle<br>`0x6315b9ab8c81e8d7868a9795ec0e25d4d62e8757` | non_address_book | unknown | unknown | verified | n/a | `0x5286a42674a990b224f33cbfe56f513ae7a08727` |
| source verified unclassified | SpigotFactory<br>`0xc37af9a4f698a58921850e5943ad94978d92173b` | non_address_book | unknown | unknown | verified | n/a | `0x5286a42674a990b224f33cbfe56f513ae7a08727` |
| source verified unclassified | SpigotFactory<br>`0xc779aaa8c0952fa30675f6f35920cc058f7a1643` | non_address_book | unknown | unknown | verified | n/a | `0x5286a42674a990b224f33cbfe56f513ae7a08727` |
| source verified unclassified | StableSwapAboveThreshold<br>`0xcdb3ebdcb29d2fcdf6bd4f6b21528899483ce07c` | non_address_book | unknown | unknown | verified | n/a | `0x5286a42674a990b224f33cbfe56f513ae7a08727` |
| source verified unclassified | StableSwapGuard<br>`0xb2275bf955690c0d2b175d9cdc357e9d06694bbd` | non_address_book | unknown | unknown | verified | n/a | `0x5286a42674a990b224f33cbfe56f513ae7a08727` |
| source verified unclassified | StableSwapGuard<br>`0xde725190e345d8e4de589e8a201395141cd2b5a4` | non_address_book | unknown | unknown | verified | n/a | `0x5286a42674a990b224f33cbfe56f513ae7a08727` |
| source verified unclassified | CreditPositionToken<br>`0x0284fca189ee95c8d68cfe91beb574447890b4df` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | CreditPositionToken<br>`0x1aea7f6183d1872cb904b0e1af4c75b21ec7d79e` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | CreditPositionToken<br>`0x214931d4878d36eadd191f4abc230f16b43c18cd` | non_address_book | unknown | unknown | verified | n/a | `0x5286a42674a990b224f33cbfe56f513ae7a08727` |
| source verified unclassified | CreditPositionToken<br>`0x30cd729166a9b2d104f021c46fd72aaec0c9e8bf` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | CreditPositionToken<br>`0x4579deed7bb5d3c63db6ae7a9da7009ed820fa71` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | CreditPositionToken<br>`0x9fe9c23c678ec4d59261818d666f63e2284168a3` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | CreditPositionToken<br>`0xa8ab7bcfc5f11b6f04fec84fd743822559094387` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | CreditPositionToken<br>`0xc0c39830d3a1056f82a16464681e522fce1cc1e4` | non_address_book | unknown | unknown | verified | n/a | `0x5286a42674a990b224f33cbfe56f513ae7a08727` |
| source verified unclassified | CreditPositionToken<br>`0xd059934dae81c70a34410198b210a114c097324a` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | CreditPositionToken<br>`0xd4bb7a40ac6eb6191d24c7e80acb06242d9f6b41` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | Escrow<br>`0x55e3acf90ec2df0603ffbc7c8c4a4e1e402c4493` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | Escrow<br>`0xb2a475abeeec287fdfda37f6977803989e388f53` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | Escrow<br>`0xd3ac493cd5f02a5376849ccb494f233323aabe85` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | EscrowFactory<br>`0x1a0a22d988c31b41da620647d15690c4757a0975` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | EscrowFactory<br>`0x1c720356ae3750832085d11f3154cd74fbc61f75` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | EscrowFactory<br>`0x21d2e69e532446ab0102573ed867eefe39f25c62` | non_address_book | unknown | unknown | verified | n/a | `0x5286a42674a990b224f33cbfe56f513ae7a08727` |
| source verified unclassified | EscrowFactory<br>`0x2238eea72728d40b5e561633ab162a7f9c32b1eb` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | EscrowFactory<br>`0x233b9f793f1604a48b765eb681cf8d37cfbd2caf` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | EscrowFactory<br>`0x2492ef0f83f7041867ec067582d5157290e09b06` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | EscrowFactory<br>`0x3519ae2b4ef92727e7635711a72a34da68d51471` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | EscrowFactory<br>`0x37441d03476ad06f9f57bcbf8975173934b0a1ce` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | EscrowFactory<br>`0x3b345717e4888a29cc60d68235d0df30604fd248` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | EscrowFactory<br>`0x3e420bc2641f3e8297dc0b5bb6d6e5aa68449ed7` | non_address_book | unknown | unknown | verified | n/a | `0x5286a42674a990b224f33cbfe56f513ae7a08727` |
| source verified unclassified | EscrowFactory<br>`0x41607ed83a6d1d07ba2b3d14edc9b721de3e6368` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | EscrowFactory<br>`0x456821be6968a4e7424c128a6795d5ad53accd03` | non_address_book | unknown | unknown | verified | n/a | `0x5286a42674a990b224f33cbfe56f513ae7a08727` |
| source verified unclassified | EscrowFactory<br>`0x4c011ebfada5f73e0471f31a82fdbd06b4338825` | non_address_book | unknown | unknown | verified | n/a | `0x5286a42674a990b224f33cbfe56f513ae7a08727` |
| source verified unclassified | EscrowFactory<br>`0x77757b1587063bdd1437e0cdbd2f57d0d180e638` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | EscrowFactory<br>`0x7a92eb6084134a7f7d7ec5035c5d80b0aef49f22` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | EscrowFactory<br>`0x7d3bf73c9c05abfa4538eeaee989ce62eccc53d7` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | EscrowFactory<br>`0x90c19b8341fa566d372f983c28878189d0089c9c` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | EscrowFactory<br>`0x928ea9825186afd9b19d967651c0f8d580032c33` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | EscrowFactory<br>`0x937d68706abafc2c4146d11f8c06f9c5d463e996` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | EscrowFactory<br>`0x970011fcfb5e57b3e8230a47645605f0019f72a9` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | EscrowFactory<br>`0x9e214188528b1450941b8fac7cc7c78093b159f0` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | EscrowFactory<br>`0xa1f05416401f40207730a2d3c1bbd6acba9d0fa1` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | EscrowFactory<br>`0xa526e7153cf4d3a16c345220c73066c9d1b48d15` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | EscrowFactory<br>`0xa86c8425161590437a13b25211dc3973662a48c9` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | EscrowFactory<br>`0xacf00146850e5363e55770043a75e7cafd6b5028` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | EscrowFactory<br>`0xb52eb2f74261e6ced854336d5bcdf9d6a8966a66` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | EscrowFactory<br>`0xdf683975919ec8386c4bd9ac6466cc1bd9e288df` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | EscrowFactory<br>`0xe7cc1a0c7f04b850a61fefdd5418c8a8c6ceaac6` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | EscrowFactory<br>`0xf9d715c8d38ef91a6627c4a19a78a55f4d36a7e4` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | EscrowFactory<br>`0xfa164a1363e75a71fe7efb1f1ae4edda422c5226` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | EscrowFactory<br>`0xfc311908fd98965c7c51f3a94b5b71ba3db4b535` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | LaaSEscrow<br>`0x0484a93a3ed66d9a5488280909c946c2fd925f46` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | LaaSEscrow<br>`0x3182c0f682b84d0586f7d2c38fa24a7e720d2359` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | LaaSEscrow<br>`0xd6d28ba1b89a0e8fcd63251858d05b373a32cde4` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | LineFactory<br>`0x1b15e15d26401b03b2036b5bca69985f70d473ca` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | LineFactory<br>`0x1e43011619659b71e198fa5bd36be43e3fba00e6` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | LineFactory<br>`0x315b46be86e5410315f8dc5528264dc940445a47` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | LineFactory<br>`0x34381047e5e779147352d8770d281e6a1eab5a6c` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | LineFactory<br>`0x383cd8c96d97581ec6d1d7506dff60ee7c08bf7b` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | LineFactory<br>`0x3ef727a7138c7acbe8d4f940c0db7d922c09b6ca` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | LineFactory<br>`0x54076604c77b0d048901f25feb1bb77954e24bde` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | LineFactory<br>`0x589f194c2fcb0c801045e0a1fd8687e2345730b9` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | LineFactory<br>`0x5e14f4c61f1e29c808893fa2c2185eec8ba7eda4` | non_address_book | unknown | unknown | verified | n/a | `0x5286a42674a990b224f33cbfe56f513ae7a08727` |
| source verified unclassified | LineFactory<br>`0x5fcce834f5294f4854434c5c61488bb501a8b3b2` | non_address_book | unknown | unknown | verified | n/a | `0x5286a42674a990b224f33cbfe56f513ae7a08727` |
| source verified unclassified | LineFactory<br>`0x6bc8367265b27398774da8215a38874ae874ff5e` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | LineFactory<br>`0x72ffee7d9b87175249704f4739b499adc14fab76` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | LineFactory<br>`0x73cb72a7efaddd99cdd2d110e2f4b8b65bf3b812` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | LineFactory<br>`0x74cca17dce71d8f80665686cd1eeda32b2f6043d` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | LineFactory<br>`0x7ebc848a16a943442855c764382d24019da3497a` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | LineFactory<br>`0x87d33efb67abfc0326bbb1a3b9f67cbb5ac1a596` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | LineFactory<br>`0x94d43a2d15a68c3d604afee7f4f11b4c53bb178a` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | LineFactory<br>`0x9e89346ddbf277a03d24d488a7d584380b7a2f2a` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | LineFactory<br>`0xae240ad17d03f42263e6f42d0e7cfa0523e3cefb` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | LineFactory<br>`0xba192639164f9e5dc6f4a4cb0f2a79e13077ec27` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | LineFactory<br>`0xd13e9f92463a848d11816e02d1e3179ee9d7820e` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | LineFactory<br>`0xebd3512d2c9d5a2a8c28223c40a901b69558f4a0` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | LineFactory<br>`0xf2080a439704013c22e1a94f3c96090159f44628` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | LineFactory<br>`0xf5393909bdd8fb934ea790ea6a88601ef95f105f` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | LineFactory<br>`0xf6befd488768c07bc2f3fe8c734513766505f5fb` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | LineFactory<br>`0xf95a56ab8d49f09f662744c47a426b9bbe014c7b` | non_address_book | unknown | unknown | verified | n/a | `0x5286a42674a990b224f33cbfe56f513ae7a08727` |
| source verified unclassified | LineFactory<br>`0xf9b32c9ee0882f57953528aa7b9287414ef7fd79` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | LineFactory<br>`0xfebf92701424c9d1bbbe5b4ae1ee139a1143b895` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | LineFactory<br>`0xfff5ff2191ee3e0df605b13fe3036015414080e7` | non_address_book | unknown | unknown | verified | n/a | `0x5286a42674a990b224f33cbfe56f513ae7a08727` |
| source verified unclassified | LiquidStrategy<br>`0x07aaed2072e19519cbb03c3b1879ea882e5827dc` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | LiquidStrategy<br>`0x402c6b172b0a30cedbbc2bcdad025470853489e5` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | LiquidStrategy<br>`0x43e7f959570d0914fea8eabe0fcd3f9446e13a50` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | LiquidStrategy<br>`0x454747265794f2da61c65bc33ed209a2b2753f1e` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | LiquidStrategy<br>`0x49577d3e5ed6990d96320af6bc8b6b7e1948b175` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | LiquidStrategy<br>`0x7707f5a188895c1d245768744ca81a1e0c0fe982` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | LiquidStrategy<br>`0x9ee0f8685e5cfc9dd0f35a1f404982e5880a292f` | non_address_book | unknown | unknown | verified | n/a | `0x5286a42674a990b224f33cbfe56f513ae7a08727` |
| source verified unclassified | LiquidStrategy<br>`0xa0e8abf1dba504d4f974d64c0a009abc0d51585a` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | LiquidStrategy<br>`0xbeb0abbd47db53a2ceb0bd8eea70260723cc1263` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | LiquidStrategy<br>`0xf9adb7758cd9260c17c2d5228ed9be1ffcc8f9cb` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | OnlyOwnersGuard<br>`0x0cdc148eae17e7c865c5c2fdcdb96252276f0699` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | Oracle<br>`0x1b32287dc71ddf63e475a68b693919f534e06712` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | Oracle<br>`0x267ec4aaff884ca1330197fe33861505947a0724` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | Oracle<br>`0x2e18fa4917f9f2a35de0313314762a4435291254` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | Oracle<br>`0x2e26663c078a74c7fb769ed8dcf22cf293a3524b` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | Oracle<br>`0x42e9290fcd214adc5721f15295e6935aa56e03dd` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | Oracle<br>`0x500d81a28ff197cd74902c1e0a33c2d49e4d6356` | non_address_book | unknown | unknown | verified | n/a | `0x5286a42674a990b224f33cbfe56f513ae7a08727` |
| source verified unclassified | Oracle<br>`0x533fd82d0b4d8eb77dfcd0f3e4ff7bcd824c10f2` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | Oracle<br>`0x5471bc932c013ab44d9820feb3f1de39b5a3d92c` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | Oracle<br>`0x551f3579aaf1fd71cb18d3e89006e971b4a9bf67` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | Oracle<br>`0x576f489433aff29ddab6203db77297361a888fa1` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | Oracle<br>`0x5f5c37590d462dd308be988be81e0218497887bd` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | Oracle<br>`0x60e4a57bd1e44cbaee00f2f807339eccf49ea40e` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | Oracle<br>`0x611cf3cda7c58906f2171fae2248b1788ba822de` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | Oracle<br>`0x6315b9ab8c81e8d7868a9795ec0e25d4d62e8757` | non_address_book | unknown | unknown | verified | n/a | `0x5286a42674a990b224f33cbfe56f513ae7a08727` |
| source verified unclassified | Oracle<br>`0x6b7d595b4be737fd58967cda0d53ee9d0537e075` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | Oracle<br>`0x7008971b8e03ef6f88a2bbf78e7855a9b1ed24d7` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | Oracle<br>`0x7b1f3d386544bd13b2c067818081b9bfdeed281d` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | Oracle<br>`0x83c8b620ceff6e62f81bf8d223aadc85176c9769` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | Oracle<br>`0x87d267f6fc370fc0daf54237f6f36783085ab98c` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | Oracle<br>`0x928405643b6c4c7dc52ad74b159e6785197c4c1a` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | Oracle<br>`0x9bf3d977e84841803c2af0987169f019d35fcaa7` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | Oracle<br>`0xab0837fd39ce300dfc79fbd0a05c72105caef03e` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | Oracle<br>`0xb35a586f507567b19150416f78e3a82c329e34cc` | non_address_book | unknown | unknown | verified | n/a | `0x5286a42674a990b224f33cbfe56f513ae7a08727` |
| source verified unclassified | Oracle<br>`0xce95035acd9b5ae1304f652412db849f8629f377` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | Oracle<br>`0xd19d2b5b0330e64de91b339e040719cfa88bc2b0` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | Oracle<br>`0xd386492a29d97e59acdf313428efbc8357dbcfd2` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | Oracle<br>`0xdacae620e040b210802d984f097cf6c4e9f740ee` | non_address_book | unknown | unknown | verified | n/a | `0x5286a42674a990b224f33cbfe56f513ae7a08727` |
| source verified unclassified | Oracle<br>`0xe76b73c560843ce2ff4459895a451ced2f64e93a` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | Oracle<br>`0xe8603de00c293f9c89b383dc0fcc7fce2262c4e2` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | Oracle<br>`0xf0dfbcf5920966cc2a5c4fe1d0bae74ebe38a89e` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | SimpleBorrowerContract<br>`0x46271dc3ab490a9dea0ba95ca0788f0fb239dafd` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | SimpleBorrowerContract<br>`0x9f7de3fe62aa78cddd9d4cef0a967095e7be99fc` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | SimpleBorrowerContract<br>`0xa2cf482793326b9474dd46faad091902c008ab14` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | SimpleBorrowerContract<br>`0xf658cc2a9550bd7a8a923747c98b814b5657f01f` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | SingleAssetStrategy<br>`0x263dbfeb1ffd79f8552a10b595da9436f7ac07ba` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | SingleAssetStrategy<br>`0x3aa8acb58dfbbf775cbae2cfa22c921ac2adc241` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |
| source verified unclassified | SingleAssetStrategy<br>`0x4349c6ceb045a7263a91fa9ae3d4bfe83136d348` | non_address_book | unknown | unknown | verified | n/a | `0x06dae7ba3958ef288adb0b9b3732ec204e48bc47` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x6c99a74a62aaf2e6aa3ff08ce7661d5c86e01dbc` | LendingVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6dacaf632017e2dfc929484606b0feb93088b623` | LendingVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x0cf11ac4ea33b6d7274cd7d6e7cea9f3f65fcf9d` | LendingVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x214699b0ad2e26ffef0247fd0c244bb7fedc85ce` | LendingVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6df7ff4b8c6743b3ded7bb3c8f21ce7f5b9d11f5` | LiquidStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x57184d7ec2d4cf5dbb77cde2d39e127391627e56` | LiquidStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xe2c11985daf500cd4a3571c49cea0f6e041ce960` | LiquidStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 25 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 91 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
