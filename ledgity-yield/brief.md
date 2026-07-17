# Agentic Audit Brief: Ledgity Yield

## Project Overview

- Project: Ledgity Yield (`ledgity-yield`)
- Website: [https://ledgity.finance/](https://ledgity.finance/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:29.892Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: arbitrum, base, ethereum, linea, sonic
- Contract surface: 167 unique implementations (328 raw deployments)
- DeFi Llama TVL: $2,551,547.72
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 59 project-authored contract(s) across 5 chain(s); 3 ERC4626 vaults, 8 ERC20 tokens, 2 ERC721 NFTs; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 7 functional families. Its contracts share 20 common project-authored base contract(s) (proxy, erc1967upgrade, administeredupgradable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 342; live-surface contracts included: 323 (272 live, 51 unknown).
- Excluded by liveness: 19 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 11/122 (9.0%)
- Deployed-live implementations: 126 of 167 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 11/126
- Verified + Unaudited implementations: 115
- Verified by bytecode match: 0
- Unverified implementations: 41
- Unique implementations: 167
- Raw deployments: 328
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 11 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 11 | 8.7% | n/a |

## Contract Surface

### ✅ Verified + Audited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LDYStaking | unknown | sonic | n/a | 2 deployments: sonic [`0x53909d0db82c6b145c602fb64e9d3013e4430940`](./contracts/sonic-146/0x53909d0db82c6b145c602fb64e9d3013e4430940/); sonic `0x77ce973744745310359b0d1a3415a34ff983708f` | ✅ Audited |
| LDYStaking | unknown | sonic | n/a | 2 deployments: sonic [`0x891611398b53bbaaa3db04c158218c319c87d554`](./contracts/sonic-146/0x891611398b53bbaaa3db04c158218c319c87d554/); sonic `0x94ed3cf3aff9439f91fcea79d0a3473159b03ed1` | ✅ Audited |
| LDYStaking | unknown | arbitrum | n/a | 7 deployments: base `0x8db8426e990a96d34f8002a7ed91eba65abd3165`; arbitrum [`0x06f54b7f27eec56616b951598baa3b84d7660ab4`](./contracts/arbitrum-42161/0x06f54b7f27eec56616b951598baa3b84d7660ab4/); arbitrum `0x0dff3884ec69cd0b19b8b2bddedfbe73801ead61`; arbitrum `0x4e80bedbd58b084a8946b7ba6814c28906be2d02`; arbitrum `0x67efae630f0f7fae539b0f1eb1fc1c4cc4dc3e47`; linea [`0x06f54b7f27eec56616b951598baa3b84d7660ab4`](./contracts/linea-59144/0x06f54b7f27eec56616b951598baa3b84d7660ab4/); linea `0x627ff3485a2e34916a6e1c0d0b350a422f5d89d1` | ✅ Audited |
| LDYStaking | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x4ef07549078673e98b16d9c9c2d1319117a166ab`](./contracts/arbitrum-42161/0x4ef07549078673e98b16d9c9c2d1319117a166ab/); arbitrum `0xd42b1065ac03f3965b11ef19ee98b0165a2c4e53` | ✅ Audited |
| LToken | unknown | sonic | n/a | 3 deployments: sonic [`0x6cdb485bedd95c5460eef6dfe1886d7a7bc3b2ca`](./contracts/sonic-146/0x6cdb485bedd95c5460eef6dfe1886d7a7bc3b2ca/); sonic `0xb05c6239212f125677a7f78b4a3ea39535e18da2`; sonic `0xc2503094bbcd67600319153f95c9b846bac4a66b` | ✅ Audited |
| LToken | unknown | base | n/a | 2 deployments: base [`0x3c769d0e8d21d380228dfb7918c6933bb6ecb6d4`](./contracts/base-8453/0x3c769d0e8d21d380228dfb7918c6933bb6ecb6d4/); base `0x94ed3cf3aff9439f91fcea79d0a3473159b03ed1` | ✅ Audited |
| LToken | unknown | base | n/a | 2 deployments: base [`0x77ce973744745310359b0d1a3415a34ff983708f`](./contracts/base-8453/0x77ce973744745310359b0d1a3415a34ff983708f/); base `0x9cfbf905a444b5c871f0b447e137e8ce7eed0bce` | ✅ Audited |
| LToken | token | arbitrum | n/a | 8 deployments: base `0x10ce08736900e6e3a46dcd9f4ddb2b44b82be5d4`; arbitrum [`0x0e77850ac71e72f9c995a2f15b7cf1b528b7e9aa`](./contracts/arbitrum-42161/0x0e77850ac71e72f9c995a2f15b7cf1b528b7e9aa/); arbitrum `0x41b0eef9787bb07306967c012298c70811cc70f0`; arbitrum `0x8584bcd220a048104e654f842c56e33d37d6aee3`; arbitrum `0xa3b0dba08b0e83aa6dbcf2fb11eafb209c84a21f`; arbitrum `0xb5c69197e5d6a52c776384479b529d2d76f9e2de`; linea `0x768fa735a0d894784fe38f52124b246dd6347d19`; linea `0xb644f32ec6cb162e766289a7b915b02d4611f667` | ✅ Audited |
| LToken | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x346245ed74cd6319f169228b980d91f17d98cd99`](./contracts/arbitrum-42161/0x346245ed74cd6319f169228b980d91f17d98cd99/); arbitrum `0xd54d564606611a3502fe8909bbd3075dbeb77813` | ✅ Audited |
| LToken | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xba427517505b14c560854aed003304fc69cbadfb`](./contracts/arbitrum-42161/0xba427517505b14c560854aed003304fc69cbadfb/); arbitrum `0xeee2ca6f97ac13d2d0df1a2d45fc9ec30939c331` | ✅ Audited |
| LToken | token | linea | n/a | [`0x4af215dbe27fc030f37f73109b85f421fab45b7a`](./contracts/linea-59144/0x4af215dbe27fc030f37f73109b85f421fab45b7a/) | ✅ Audited |

### ⚠️ Verified + Unaudited (115)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Address | unknown | base | n/a | [`0xf55dde6c343cb893041fdcba386dbadffa4bc429`](./contracts/base-8453/0xf55dde6c343cb893041fdcba386dbadffa4bc429/) | ⚠️ Unaudited |
| APRHistory | unknown | sonic | n/a | 6 deployments: sonic [`0x10ce08736900e6e3a46dcd9f4ddb2b44b82be5d4`](./contracts/sonic-146/0x10ce08736900e6e3a46dcd9f4ddb2b44b82be5d4/); sonic `0x8872b8c7533bf098bbf012b9f1c6318ae2ed4bea`; sonic `0xe34603a1e6a07435ed39ca36d37e80727f737cbf`; base `0xe34603a1e6a07435ed39ca36d37e80727f737cbf`; arbitrum `0x3f0ff9947550d7cf26549136552c785446ad4ac5`; linea `0x3f0ff9947550d7cf26549136552c785446ad4ac5` | ⚠️ Unaudited |
| BalanceLogicLibrary | unknown | base | n/a | 5 deployments: ethereum `0xcc1bef907dce6c073332a75086708f53bde4f6f0`; sonic `0xad4a008ac4c60a7b0e65e789674836bffab41028`; base [`0x70dee24e016cc09d423490d3040759a71a5b994f`](./contracts/base-8453/0x70dee24e016cc09d423490d3040759a71a5b994f/); arbitrum `0x7b25b4cde2666e31780bdb0a3ab8568be423060b`; linea `0xe34603a1e6a07435ed39ca36d37e80727f737cbf` | ⚠️ Unaudited |
| BatchTokenSender | token | arbitrum | n/a | [`0x8aed5d3c5844d26671ae63be08ad2a6903bd293e`](./contracts/arbitrum-42161/0x8aed5d3c5844d26671ae63be08ad2a6903bd293e/) | ⚠️ Unaudited |
| Bridge | unknown | sonic | n/a | 2 deployments: sonic [`0x826c8465b6e6a0ca6454cc15703b60101f171d8e`](./contracts/sonic-146/0x826c8465b6e6a0ca6454cc15703b60101f171d8e/); sonic `0xf771463d1e9524574d7117f90c5b1d66a1a3e079` | ⚠️ Unaudited |
| Bridge | unknown | sonic | n/a | 2 deployments: sonic [`0x9e70d16f16bbb97d1f1d5dab9fdb8e071f2b56cd`](./contracts/sonic-146/0x9e70d16f16bbb97d1f1d5dab9fdb8e071f2b56cd/); sonic `0xf06a648cd013990c237318cb49a56bb54e2cd698` | ⚠️ Unaudited |
| CircleTokenAdapter | unknown | sonic | n/a | [`0x391071fe567d609e4af9d32de726d4c33679c7e2`](./contracts/sonic-146/0x391071fe567d609e4af9d32de726d4c33679c7e2/) | ⚠️ Unaudited |
| CircleTokenAdapter | unknown | sonic | n/a | [`0xba2b70309db7ec370e68240cf1f05580cdb0e563`](./contracts/sonic-146/0xba2b70309db7ec370e68240cf1f05580cdb0e563/) | ⚠️ Unaudited |
| ConfigRegistry | unknown | sonic | n/a | 2 deployments: sonic [`0x33e1cc3035a2f779a0bc7157d8f2b2d1ad956b00`](./contracts/sonic-146/0x33e1cc3035a2f779a0bc7157d8f2b2d1ad956b00/); sonic `0xffd7c82bbf7e44fb986c4ae34e376cd674b670f3` | ⚠️ Unaudited |
| CouncilMerkleDistributor | unknown | base | n/a | 2 deployments: base [`0x236ae676cb5b107fa0cc545b181bc9166494b180`](./contracts/base-8453/0x236ae676cb5b107fa0cc545b181bc9166494b180/); base `0x99bc4955d9dbf40ad1a69ff746aff0c92f8c6c4b` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | sonic | n/a | 5 deployments: sonic [`0x13e62b8113590c46b273abe35bd86d4c7856e955`](./contracts/sonic-146/0x13e62b8113590c46b273abe35bd86d4c7856e955/); sonic `0x536e1c104f89351a2156135fa85b9b2dc26d9462`; sonic `0x613904b9a1af4450fd34655d123eeb0944888b21`; sonic `0x68f3c6526a778f4d0e29ca905d9bbfc7636c2a63`; sonic `0xbea9da36d218079ad6dee79c447e33d57618b05d` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | sonic | n/a | 2 deployments: sonic [`0x4c0b5bfd9b7a970e24ce5d62af510258c99e9ec7`](./contracts/sonic-146/0x4c0b5bfd9b7a970e24ce5d62af510258c99e9ec7/); sonic `0x910afaa218ce5228f024252a1ea69780dcd3caa5` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | sonic | n/a | 2 deployments: sonic [`0x5f985705a9ed0cd2561c8d69e77b66ce99d9f3e8`](./contracts/sonic-146/0x5f985705a9ed0cd2561c8d69e77b66ce99d9f3e8/); sonic `0x65f2358801ece9e06d283d0d80f3e6ca7a7c3477` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | base | n/a | 2 deployments: base [`0x034b0392536e703873c6db32a5d257d68f03e442`](./contracts/base-8453/0x034b0392536e703873c6db32a5d257d68f03e442/); base `0xde1cd85c7a5d07449ca343b63d0dcb5236028370` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | base | n/a | 2 deployments: base [`0x3c958eb9df9ec554fd394c5c66e0d339acca7a15`](./contracts/base-8453/0x3c958eb9df9ec554fd394c5c66e0d339acca7a15/); base `0xa86d9b0d020b9eaf29d5b5aae143e9e81ff83e8e` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | base | n/a | 3 deployments: base [`0x833e364ae3580493c491530c78aafe50db44ee12`](./contracts/base-8453/0x833e364ae3580493c491530c78aafe50db44ee12/); base `0x8b72ecfce5b8f09bc268f2438ad231c40abf5cb4`; base `0xe78d6c135c1d2865c6f539850f61d1cd5989529f` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x1549647606a71b2a79b85aeb54631b8ea2a1939a`](./contracts/arbitrum-42161/0x1549647606a71b2a79b85aeb54631b8ea2a1939a/); arbitrum `0xadf8d77a856ff2267029ace5dced4972c649e683` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x73b7ea670ad41021a311f60b2be2fccb97784a39`](./contracts/arbitrum-42161/0x73b7ea670ad41021a311f60b2be2fccb97784a39/); arbitrum `0xa3114c5435ee23835f98ed91cf7447fc79b7dcc4` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x8b39bb59e30c5716f556376c032be30ea073a381`](./contracts/arbitrum-42161/0x8b39bb59e30c5716f556376c032be30ea073a381/); arbitrum `0x98002b5c06b44c8769da3dae97ca498ab6f97137` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | linea | n/a | 2 deployments: linea [`0x1549647606a71b2a79b85aeb54631b8ea2a1939a`](./contracts/linea-59144/0x1549647606a71b2a79b85aeb54631b8ea2a1939a/); linea `0xadf8d77a856ff2267029ace5dced4972c649e683` | ⚠️ Unaudited |
| FiatTokenProxy | unknown | sonic | n/a | 2 deployments: sonic [`0x3fd4eaa6f9b0b46bb8a2dbe8c646524e141ee783`](./contracts/sonic-146/0x3fd4eaa6f9b0b46bb8a2dbe8c646524e141ee783/); sonic `0x7657f03eef1b05996b02eeeb89a0683a5b61fe35` | ⚠️ Unaudited |
| FiatTokenV2_2 | unknown | sonic | n/a | 2 deployments: sonic [`0x229e64252e2901a424600e22c28a722404d92dcc`](./contracts/sonic-146/0x229e64252e2901a424600e22c28a722404d92dcc/); sonic `0x29219dd400f2bf60e5a23d13be72b486d4038894` | ⚠️ Unaudited |
| FiatTokenV2_2 | unknown | sonic | n/a | 2 deployments: sonic [`0x23af4836dd12e9c40269965eb41a88aefd544c1a`](./contracts/sonic-146/0x23af4836dd12e9c40269965eb41a88aefd544c1a/); sonic `0xe715cba7b5ccb33790cebff1436809d36cb17e57` | ⚠️ Unaudited |
| FiatTokenV2_2 | unknown | sonic | n/a | 4 deployments: sonic [`0x35d51107aacd80ee8ad3751170d70cf4ce186535`](./contracts/sonic-146/0x35d51107aacd80ee8ad3751170d70cf4ce186535/); sonic `0x767628f6e5d5bb6b4e47c805ae6ab7fee29a0801`; sonic `0xb070ad54d66ee7efa2bdbfff9628ffafd247db87`; sonic `0xde95b31cae2ae5a63b9ae23252686684f29e09b3` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | base | n/a | [`0x60a3e35cc302bfa44cb288bc5a4f316fdb1adb42`](./contracts/base-8453/0x60a3e35cc302bfa44cb288bc5a4f316fdb1adb42/) | ⚠️ Unaudited |
| FixedTermInvestmentVault | unknown | base | n/a | 2 deployments: base [`0x085b292a7c54767d5371fe939a4ad4dc9828d98f`](./contracts/base-8453/0x085b292a7c54767d5371fe939a4ad4dc9828d98f/); base `0x1f866fd619e4df4620f3438fb6ba3c37e9b5b8d0` | ⚠️ Unaudited |
| GlobalAccessList | unknown | ethereum | n/a | 4 deployments: ethereum [`0x210482e0b5c29086f733e6dd44e2c19f32ae1757`](./contracts/ethereum-1/0x210482e0b5c29086f733e6dd44e2c19f32ae1757/); ethereum `0x2aff7737dd64390f18e76e39c977b6b0736b5a59`; ethereum `0x43b3c64dbc95f9ed83795e051fc00014059e698f`; ethereum `0x57791de9e18693834b37323d3c90190a8ab3b925` | ⚠️ Unaudited |
| GlobalAccessList | unknown | sonic | n/a | 3 deployments: ethereum `0x12d5c708ae229cae0f6c712cb8feb1c914205c00`; ethereum `0xf6cfb035edae09ed885de86250d43ca02200d077`; sonic [`0x071c9d3ee88c1d22f931e87bc70da086de4caf29`](./contracts/sonic-146/0x071c9d3ee88c1d22f931e87bc70da086de4caf29/) | ⚠️ Unaudited |
| GlobalAccessList | unknown | base | n/a | 2 deployments: base [`0x2166480d795f1d185ba940af58b905e3b33104e9`](./contracts/base-8453/0x2166480d795f1d185ba940af58b905e3b33104e9/); base `0xac34332182f0acf7fcd88b1cb60e79e35a26c67b` | ⚠️ Unaudited |
| GlobalAccessList | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xb05c6239212f125677a7f78b4a3ea39535e18da2`](./contracts/arbitrum-42161/0xb05c6239212f125677a7f78b4a3ea39535e18da2/); arbitrum `0xc2503094bbcd67600319153f95c9b846bac4a66b` | ⚠️ Unaudited |
| GlobalAccessList | unknown | linea | n/a | 2 deployments: linea [`0x2aff7737dd64390f18e76e39c977b6b0736b5a59`](./contracts/linea-59144/0x2aff7737dd64390f18e76e39c977b6b0736b5a59/); linea `0xf6cfb035edae09ed885de86250d43ca02200d077` | ⚠️ Unaudited |
| GlobalBlacklist | unknown | sonic | n/a | 2 deployments: sonic [`0x06ff95bd22769e4c7067b571d92918b066ab145b`](./contracts/sonic-146/0x06ff95bd22769e4c7067b571d92918b066ab145b/); sonic `0x93aaa26e893263f007d6bf25c7a6c8f27b3a0d29` | ⚠️ Unaudited |
| GlobalBlacklist | unknown | sonic | n/a | 2 deployments: sonic [`0x210482e0b5c29086f733e6dd44e2c19f32ae1757`](./contracts/sonic-146/0x210482e0b5c29086f733e6dd44e2c19f32ae1757/); sonic `0x43b3c64dbc95f9ed83795e051fc00014059e698f` | ⚠️ Unaudited |
| GlobalBlacklist | unknown | base | n/a | 2 deployments: base [`0x210482e0b5c29086f733e6dd44e2c19f32ae1757`](./contracts/base-8453/0x210482e0b5c29086f733e6dd44e2c19f32ae1757/); base `0x43b3c64dbc95f9ed83795e051fc00014059e698f` | ⚠️ Unaudited |
| GlobalBlacklist | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x896e3b079aa7a00413c074a5c888f3b96d4d3bca`](./contracts/arbitrum-42161/0x896e3b079aa7a00413c074a5c888f3b96d4d3bca/); arbitrum `0xca55a2394876e7cf52e99ab36fc9151a7d9cf350` | ⚠️ Unaudited |
| GlobalBlacklist | unknown | linea | n/a | 2 deployments: linea [`0x896e3b079aa7a00413c074a5c888f3b96d4d3bca`](./contracts/linea-59144/0x896e3b079aa7a00413c074a5c888f3b96d4d3bca/); linea `0xca55a2394876e7cf52e99ab36fc9151a7d9cf350` | ⚠️ Unaudited |
| GlobalBlacklistSonic | unknown | sonic | n/a | 2 deployments: sonic [`0x61097ff065f498a2e4f6006c6a6c506bd17e39e0`](./contracts/sonic-146/0x61097ff065f498a2e4f6006c6a6c506bd17e39e0/); sonic `0xcafa29a5b0bec43cdea826ec21d0134e14fcc37e` | ⚠️ Unaudited |
| GlobalOwner | unknown | sonic | n/a | 2 deployments: sonic [`0x2aff7737dd64390f18e76e39c977b6b0736b5a59`](./contracts/sonic-146/0x2aff7737dd64390f18e76e39c977b6b0736b5a59/); sonic `0xf6cfb035edae09ed885de86250d43ca02200d077` | ⚠️ Unaudited |
| GlobalOwner | unknown | sonic | n/a | 2 deployments: sonic [`0xeb163bff473abc556d8af259e8bf856fdbc6d108`](./contracts/sonic-146/0xeb163bff473abc556d8af259e8bf856fdbc6d108/); sonic `0xf2663b722e0faccc6fb2743ab8cb30b1d8d93649` | ⚠️ Unaudited |
| GlobalOwner | unknown | base | n/a | 2 deployments: base [`0x2aff7737dd64390f18e76e39c977b6b0736b5a59`](./contracts/base-8453/0x2aff7737dd64390f18e76e39c977b6b0736b5a59/); base `0xf6cfb035edae09ed885de86250d43ca02200d077` | ⚠️ Unaudited |
| GlobalOwner | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x36811e4b6d5f890bd0ac858b69499f9a7b2dc05f`](./contracts/arbitrum-42161/0x36811e4b6d5f890bd0ac858b69499f9a7b2dc05f/); arbitrum `0xe4af4573bfc5f04d8b84c61744de8a94059f2462` | ⚠️ Unaudited |
| GlobalOwner | unknown | linea | n/a | 2 deployments: linea [`0x36811e4b6d5f890bd0ac858b69499f9a7b2dc05f`](./contracts/linea-59144/0x36811e4b6d5f890bd0ac858b69499f9a7b2dc05f/); linea `0xe4af4573bfc5f04d8b84c61744de8a94059f2462` | ⚠️ Unaudited |
| GlobalOwnerSonic | unknown | sonic | n/a | 2 deployments: sonic [`0x8ce2c4dadfda726a21b9f0f7064170ced31e9f5e`](./contracts/sonic-146/0x8ce2c4dadfda726a21b9f0f7064170ced31e9f5e/); sonic `0xbbb6f6e3ac59112d90dcc63dcc27567101450011` | ⚠️ Unaudited |
| GlobalPause | unknown | sonic | n/a | 2 deployments: sonic [`0x12d5c708ae229cae0f6c712cb8feb1c914205c00`](./contracts/sonic-146/0x12d5c708ae229cae0f6c712cb8feb1c914205c00/); sonic `0x57791de9e18693834b37323d3c90190a8ab3b925` | ⚠️ Unaudited |
| GlobalPause | unknown | sonic | n/a | 2 deployments: sonic [`0x7f989877003be72f795c23889ab452ad58c59271`](./contracts/sonic-146/0x7f989877003be72f795c23889ab452ad58c59271/); sonic `0xa87d32a42f208f428c186c4dbf6de9d3f93dba6f` | ⚠️ Unaudited |
| GlobalPause | unknown | base | n/a | 2 deployments: base [`0x12d5c708ae229cae0f6c712cb8feb1c914205c00`](./contracts/base-8453/0x12d5c708ae229cae0f6c712cb8feb1c914205c00/); base `0x57791de9e18693834b37323d3c90190a8ab3b925` | ⚠️ Unaudited |
| GlobalPause | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xd4568d313fa2d5c6eba37c9f30f6fb8d1c552ddd`](./contracts/arbitrum-42161/0xd4568d313fa2d5c6eba37c9f30f6fb8d1c552ddd/); arbitrum `0xd4d4c68ce70fa88b9e527dd3a4a6d19c5cbdd4db` | ⚠️ Unaudited |
| GlobalPause | unknown | linea | n/a | 2 deployments: linea [`0xd4568d313fa2d5c6eba37c9f30f6fb8d1c552ddd`](./contracts/linea-59144/0xd4568d313fa2d5c6eba37c9f30f6fb8d1c552ddd/); linea `0xd4d4c68ce70fa88b9e527dd3a4a6d19c5cbdd4db` | ⚠️ Unaudited |
| GlobalPauseSonic | unknown | sonic | n/a | 2 deployments: sonic [`0x18fe72e5ef539284edac573ecf9ce062788f150c`](./contracts/sonic-146/0x18fe72e5ef539284edac573ecf9ce062788f150c/); sonic `0x8925a8cfdc8141cb9bf79eb95756fa982b4a4e1b` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | base | n/a | 2 deployments: base [`0x972c17d0ada071db4a0395505dd3ad0a80809053`](./contracts/base-8453/0x972c17d0ada071db4a0395505dd3ad0a80809053/); base `0xf25a516caf56895032b3f3ee842b45462ff491c3` | ⚠️ Unaudited |
| KrystalYieldVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x06ff95bd22769e4c7067b571d92918b066ab145b`](./contracts/ethereum-1/0x06ff95bd22769e4c7067b571d92918b066ab145b/); ethereum `0x7f989877003be72f795c23889ab452ad58c59271` | ⚠️ Unaudited |
| LDY | unknown | base | n/a | 3 deployments: ethereum `0x482df7483a52496f4c65ab499966dfcdf4ddfdbc`; base [`0x055d20a70efd45ab839ae1a39603d0cfdbdd8a13`](./contracts/base-8453/0x055d20a70efd45ab839ae1a39603d0cfdbdd8a13/); arbitrum `0x999faf0af2ff109938eefe6a7bf91ca56f0d07e1` | ⚠️ Unaudited |
| LDYStakingSonic | unknown | sonic | n/a | 2 deployments: sonic [`0x51231eb81d7c63c39ca1c4fc5801ed7def9e05ea`](./contracts/sonic-146/0x51231eb81d7c63c39ca1c4fc5801ed7def9e05ea/); sonic `0xbee6eb3b627907496466b1d847e7f542ef35a87f` | ⚠️ Unaudited |
| LedgityDataProvider | unknown | linea | n/a | 6 deployments: ethereum `0xe34603a1e6a07435ed39ca36d37e80727f737cbf`; sonic `0xac5da840e826498fbed926cd4db697201f72ea0d`; base `0xab46555149f92822aa9821eacd36bef41daac126`; base `0xda106c9c52579fef0001158e2206e60cce818a39`; arbitrum `0x6cdb485bedd95c5460eef6dfe1886d7a7bc3b2ca`; linea [`0x12d5c708ae229cae0f6c712cb8feb1c914205c00`](./contracts/linea-59144/0x12d5c708ae229cae0f6c712cb8feb1c914205c00/) | ⚠️ Unaudited |
| LedgityYieldVault | unknown | ethereum | n/a | 3 deployments: ethereum [`0x20968165b7d2cdf33af632aab3e0539848d44bc8`](./contracts/ethereum-1/0x20968165b7d2cdf33af632aab3e0539848d44bc8/); ethereum `0x3c769d0e8d21d380228dfb7918c6933bb6ecb6d4`; ethereum `0x6ffc9a91e8c87fbe3744ceb6a134537c6a21b411` | ⚠️ Unaudited |
| LedgityYieldVault | unknown | base | n/a | 3 deployments: base [`0x76f1f8859a37c32d0764898f7f0b1585ed983f00`](./contracts/base-8453/0x76f1f8859a37c32d0764898f7f0b1585ed983f00/); base `0x916f179d5d9b7d8ad815ac2f8570aabf0c6a6e38`; base `0xfaa1e3720e6ef8cc76a800db7b3df8944833b134` | ⚠️ Unaudited |
| LedgityYieldVault | core_logic | arbitrum | n/a | 6 deployments: ethereum `0x8db8426e990a96d34f8002a7ed91eba65abd3165`; ethereum `0x94ed3cf3aff9439f91fcea79d0a3473159b03ed1`; base `0x9bb3be95ff31cfc1cf5860dd0e1d208fb3c74361`; base `0xf9eece93f43abd5a2287df083c8c510da7a9b56f`; arbitrum [`0x0a1ba9ff031dce2f0c228b572154fb367e0df98a`](./contracts/arbitrum-42161/0x0a1ba9ff031dce2f0c228b572154fb367e0df98a/); linea `0x57791de9e18693834b37323d3c90190a8ab3b925` | ⚠️ Unaudited |
| LedgityYieldVault | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x283f35b6406a0e19a786ed119869ef2c0fe157ee`](./contracts/arbitrum-42161/0x283f35b6406a0e19a786ed119869ef2c0fe157ee/); arbitrum `0x5baf90214294338838fad1abdb7b928922660933` | ⚠️ Unaudited |
| LedgityYieldVault | unknown | linea | n/a | 2 deployments: linea [`0x20968165b7d2cdf33af632aab3e0539848d44bc8`](./contracts/linea-59144/0x20968165b7d2cdf33af632aab3e0539848d44bc8/); linea `0x43b3c64dbc95f9ed83795e051fc00014059e698f` | ⚠️ Unaudited |
| LedgityYieldVaultSonic | core_logic | sonic | n/a | [`0x22c32d67257d55c32d83c743e31da208d39ba165`](./contracts/sonic-146/0x22c32d67257d55c32d83c743e31da208d39ba165/) | ⚠️ Unaudited |
| LedgityYieldVaultSonic | unknown | sonic | n/a | 2 deployments: sonic [`0x3afcd7a95bffde892f1f4670583b9d0911951f64`](./contracts/sonic-146/0x3afcd7a95bffde892f1f4670583b9d0911951f64/); sonic `0x65f75c675cc76474662dfbf7b6e8683764223001` | ⚠️ Unaudited |
| LegacyStakingTransition | unknown | base | n/a | 2 deployments: base [`0x891611398b53bbaaa3db04c158218c319c87d554`](./contracts/base-8453/0x891611398b53bbaaa3db04c158218c319c87d554/); base `0xd70b76d7e4c0bb81bad0e3918f8d32241e4fbab0` | ⚠️ Unaudited |
| LeverageFiller | unknown | sonic | n/a | 2 deployments: sonic [`0x053714a436ea716e14b3430f2ee8e2488c83f16a`](./contracts/sonic-146/0x053714a436ea716e14b3430f2ee8e2488c83f16a/); sonic `0xfe4a47e10ee3b270b43972629e9a93ee0ab31e7d` | ⚠️ Unaudited |
| LongTailIRM | unknown | sonic | n/a | [`0x12f407bfdbbe56ab19ecd389992f0f408810305a`](./contracts/sonic-146/0x12f407bfdbbe56ab19ecd389992f0f408810305a/) | ⚠️ Unaudited |
| LTokenSignaler | unknown | sonic | n/a | 2 deployments: sonic [`0x0a1ba9ff031dce2f0c228b572154fb367e0df98a`](./contracts/sonic-146/0x0a1ba9ff031dce2f0c228b572154fb367e0df98a/); sonic `0x283f35b6406a0e19a786ed119869ef2c0fe157ee` | ⚠️ Unaudited |
| LTokenSignaler | unknown | sonic | n/a | 2 deployments: sonic [`0x4eec09db589c882fba7c5d03065dfd20912fe877`](./contracts/sonic-146/0x4eec09db589c882fba7c5d03065dfd20912fe877/); sonic `0x902982c0c405091894ff82b3b51f180f99f75144` | ⚠️ Unaudited |
| LTokenSignaler | unknown | base | n/a | 2 deployments: base [`0x4eec09db589c882fba7c5d03065dfd20912fe877`](./contracts/base-8453/0x4eec09db589c882fba7c5d03065dfd20912fe877/); base `0xcc1bef907dce6c073332a75086708f53bde4f6f0` | ⚠️ Unaudited |
| LTokenSignaler | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x3352b01e26f5e65ce2779ac01161a56e1b844398`](./contracts/arbitrum-42161/0x3352b01e26f5e65ce2779ac01161a56e1b844398/); arbitrum `0xd723df4a6051ac696ec3fffb7621fc143ddbca1d` | ⚠️ Unaudited |
| LTokenSignaler | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x5bffc5303719f0dc6050a2d8042936714109985f`](./contracts/arbitrum-42161/0x5bffc5303719f0dc6050a2d8042936714109985f/); arbitrum `0xe8a6c46683f4cd2c6ae723542d61eb973b08e806` | ⚠️ Unaudited |
| LTokenSignaler | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x627ff3485a2e34916a6e1c0d0b350a422f5d89d1`](./contracts/arbitrum-42161/0x627ff3485a2e34916a6e1c0d0b350a422f5d89d1/); arbitrum `0xf97dfced60fbef9452dbed18778a4fe6c14bbaf4` | ⚠️ Unaudited |
| LTokenSignaler | unknown | linea | n/a | 2 deployments: linea [`0x5bffc5303719f0dc6050a2d8042936714109985f`](./contracts/linea-59144/0x5bffc5303719f0dc6050a2d8042936714109985f/); linea `0xe8a6c46683f4cd2c6ae723542d61eb973b08e806` | ⚠️ Unaudited |
| LTokenSignaler | unknown | linea | n/a | 2 deployments: linea [`0xba427517505b14c560854aed003304fc69cbadfb`](./contracts/linea-59144/0xba427517505b14c560854aed003304fc69cbadfb/); linea `0xeee2ca6f97ac13d2d0df1a2d45fc9ec30939c331` | ⚠️ Unaudited |
| LTokenSignalerSonic | unknown | sonic | n/a | 2 deployments: sonic [`0x5111c350e64692d914ae496166d54dfc0f565544`](./contracts/sonic-146/0x5111c350e64692d914ae496166d54dfc0f565544/); sonic `0xf96af1681a7e926fa694c24d740913c7e860a610` | ⚠️ Unaudited |
| LTokenSonic | unknown | sonic | n/a | 3 deployments: sonic [`0x88dc8674339731a12a08624f455fd41fe2d6dc82`](./contracts/sonic-146/0x88dc8674339731a12a08624f455fd41fe2d6dc82/); sonic `0xd7ccabfbefe332c9784ff3debebddbc787e75e69`; sonic `0xedca8e0eca499d7a2ee22690d1b3cb7726184cc6` | ⚠️ Unaudited |
| MajorIRM | unknown | sonic | n/a | [`0x18fad5b72113497e1c92570b6f517328d05505fa`](./contracts/sonic-146/0x18fad5b72113497e1c92570b6f517328d05505fa/) | ⚠️ Unaudited |
| MasterMinter | unknown | base | n/a | [`0x114b64a8bf7bf0ab2a8a64a3e348307bd568726e`](./contracts/base-8453/0x114b64a8bf7bf0ab2a8a64a3e348307bd568726e/) | ⚠️ Unaudited |
| OracleRouterChainlink | operational_periphery | sonic | n/a | [`0xfb04979bda6546f114afcff2a78d35446d5a32e8`](./contracts/sonic-146/0xfb04979bda6546f114afcff2a78d35446d5a32e8/) | ⚠️ Unaudited |
| PositionsManager | unknown | sonic | n/a | 2 deployments: sonic [`0x31b57e9dadc3227400bf1742fc9692ebb3749a4b`](./contracts/sonic-146/0x31b57e9dadc3227400bf1742fc9692ebb3749a4b/); sonic `0x31b68b75a817d74fad9a9cb04b63ab9b61ef0303` | ⚠️ Unaudited |
| PreMining | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x9d7aedefe90b880c5a9bed4fcbd3fad0ea5aa06c`](./contracts/arbitrum-42161/0x9d7aedefe90b880c5a9bed4fcbd3fad0ea5aa06c/); linea `0xd54d564606611a3502fe8909bbd3075dbeb77813` | ⚠️ Unaudited |
| PrizeToken | unknown | sonic | n/a | 2 deployments: sonic [`0x40dcf9db8b2335bcdc006e27db7f8148b0d267e3`](./contracts/sonic-146/0x40dcf9db8b2335bcdc006e27db7f8148b0d267e3/); sonic `0x78d97679b6582eb0adfd2b1b52a7dced76d94c69` | ⚠️ Unaudited |
| RfqEngine | unknown | sonic | n/a | [`0x20116919299625b1b3e474d5a594a5b4ed13e95b`](./contracts/sonic-146/0x20116919299625b1b3e474d5a594a5b4ed13e95b/) | ⚠️ Unaudited |
| SafeProxy | unknown | base | n/a | [`0xe7616e98d2506e571e8f6e38e7bfd0b55642acac`](./contracts/base-8453/0xe7616e98d2506e571e8f6e38e7bfd0b55642acac/) | ⚠️ Unaudited |
| SignatureChecker | unknown | sonic | n/a | 6 deployments: sonic [`0x01798076f71e0e48c37b670af7752d74d6e6bf1b`](./contracts/sonic-146/0x01798076f71e0e48c37b670af7752d74d6e6bf1b/); sonic `0x26c060a219d77bc0bb0e3e7131f50a51cf7d4e81`; sonic `0x5d03117ddd9ca5455913afe3b3b8a7c2b068f887`; sonic `0x6edf3f3a5ccb6a9c3535c1bd62b666b770b6d820`; sonic `0xb4a197efc9f11b460e11ea7a819eeb2c902dd7cf`; sonic `0xb90f6a672aee6f895e5ac50ad3a1a88868b502fe` | ⚠️ Unaudited |
| StableIRM | unknown | sonic | n/a | [`0x4bd77b487e2a8884b4e5528ff32b3917f7edefd5`](./contracts/sonic-146/0x4bd77b487e2a8884b4e5528ff32b3917f7edefd5/) | ⚠️ Unaudited |
| StakingPositions | unknown | ethereum | n/a | 4 deployments: ethereum [`0x4eec09db589c882fba7c5d03065dfd20912fe877`](./contracts/ethereum-1/0x4eec09db589c882fba7c5d03065dfd20912fe877/); ethereum `0xeb163bff473abc556d8af259e8bf856fdbc6d108`; base `0x54b36dc68c3edb568ee471148463da7b84ef79ea`; arbitrum `0xea7c3f040f1e663541be4dd9db713ce09773982d` | ⚠️ Unaudited |
| StakingPositions | unknown | ethereum | n/a | 2 deployments: ethereum [`0x902982c0c405091894ff82b3b51f180f99f75144`](./contracts/ethereum-1/0x902982c0c405091894ff82b3b51f180f99f75144/); ethereum `0xf2663b722e0faccc6fb2743ab8cb30b1d8d93649` | ⚠️ Unaudited |
| StakingPositions | unknown | base | n/a | 2 deployments: base [`0x0fcfdf9b6572116fa662a5cf8a074b51eb2d6d88`](./contracts/base-8453/0x0fcfdf9b6572116fa662a5cf8a074b51eb2d6d88/); base `0x4caee650c47462457eca0d3411b8b633d828fd2a` | ⚠️ Unaudited |
| StakingPositions | unknown | base | n/a | 2 deployments: base [`0x7ce9957464ecac16ae448dd312225292306f577b`](./contracts/base-8453/0x7ce9957464ecac16ae448dd312225292306f577b/); base `0x97ca5d733062915c78dd8b2f95ead0a113d379d6` | ⚠️ Unaudited |
| StakingPositions | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x6e83612c73f124127d49ea642c392ff4d9eafd5b`](./contracts/arbitrum-42161/0x6e83612c73f124127d49ea642c392ff4d9eafd5b/); arbitrum `0x883108311b43871be1e590c1ab0979e1e72b1df5` | ⚠️ Unaudited |
| StakingPositions | unknown | linea | n/a | 2 deployments: linea [`0x588eb805042aa966eb282dcbbc36b2f41b287068`](./contracts/linea-59144/0x588eb805042aa966eb282dcbbc36b2f41b287068/); linea `0xcc1bef907dce6c073332a75086708f53bde4f6f0` | ⚠️ Unaudited |
| StakingPositions | unknown | linea | n/a | 2 deployments: linea [`0x891611398b53bbaaa3db04c158218c319c87d554`](./contracts/linea-59144/0x891611398b53bbaaa3db04c158218c319c87d554/); linea `0x8db8426e990a96d34f8002a7ed91eba65abd3165` | ⚠️ Unaudited |
| StakingPositionsSonic | unknown | sonic | n/a | 2 deployments: sonic [`0x655c94df33d39a126f9260f4b795b51336767cc8`](./contracts/sonic-146/0x655c94df33d39a126f9260f4b795b51336767cc8/); sonic `0xd1ec7222fa703e4942b6032073ce48394ac5c306` | ⚠️ Unaudited |
| StakingRewardsDistributor | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa87d32a42f208f428c186c4dbf6de9d3f93dba6f`](./contracts/ethereum-1/0xa87d32a42f208f428c186c4dbf6de9d3f93dba6f/); ethereum `0xd8fefecc48d0b7a250314cd67d7f73ff3a35b6bf` | ⚠️ Unaudited |
| StakingRewardsDistributor | unknown | base | n/a | 2 deployments: base [`0x2ab82b69ab88e6174425234c4da50b2edfc217c1`](./contracts/base-8453/0x2ab82b69ab88e6174425234c4da50b2edfc217c1/); base `0xb5f8754dd9ce92950872f033093043f0c0f9a384` | ⚠️ Unaudited |
| StakingRewardsDistributor | unknown | base | n/a | 2 deployments: base [`0x4340b97e82d048f7743b68e0e71ce27ce4307528`](./contracts/base-8453/0x4340b97e82d048f7743b68e0e71ce27ce4307528/); base `0x7143e7c89c540f81588454f6b5a3c0ec2e128d4f` | ⚠️ Unaudited |
| StakingRewardsDistributor | operational_periphery | arbitrum | n/a | 3 deployments: ethereum `0x37eef1059c974b1142a706a4090dbebd0ba6c2bd`; base `0x6ebbff8451724995458a95ba41f4debbc1fd37c2`; arbitrum [`0x2ed9031c6aaac0c42972e133776d133fcc40fd7e`](./contracts/arbitrum-42161/0x2ed9031c6aaac0c42972e133776d133fcc40fd7e/) | ⚠️ Unaudited |
| StakingRewardsDistributor | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x841a13a5c4aa89d7c013e6f49e95188ed3e6c300`](./contracts/arbitrum-42161/0x841a13a5c4aa89d7c013e6f49e95188ed3e6c300/); arbitrum `0xeb4b058bf032e1ed61aa1feca332a8b8b96f7483` | ⚠️ Unaudited |
| StakingRewardsDistributor | unknown | linea | n/a | 2 deployments: linea [`0x3c769d0e8d21d380228dfb7918c6933bb6ecb6d4`](./contracts/linea-59144/0x3c769d0e8d21d380228dfb7918c6933bb6ecb6d4/); linea `0x94ed3cf3aff9439f91fcea79d0a3473159b03ed1` | ⚠️ Unaudited |
| StakingRewardsDistributor | unknown | linea | n/a | 2 deployments: linea [`0x4eec09db589c882fba7c5d03065dfd20912fe877`](./contracts/linea-59144/0x4eec09db589c882fba7c5d03065dfd20912fe877/); linea `0x902982c0c405091894ff82b3b51f180f99f75144` | ⚠️ Unaudited |
| StakingRewardsDistributorSonic | operational_periphery | sonic | n/a | 2 deployments: sonic [`0x3bcb3c2992a1a4c2c97010c6d6789f6abcb40e4c`](./contracts/sonic-146/0x3bcb3c2992a1a4c2c97010c6d6789f6abcb40e4c/); sonic `0xb91985d71da9d3dae5d47503ebb7d133cf68640e` | ⚠️ Unaudited |
| Storage | unknown | sonic | n/a | [`0x4fec0c1c745c2d8ebb4fffa0d4e8d1395a135d73`](./contracts/sonic-146/0x4fec0c1c745c2d8ebb4fffa0d4e8d1395a135d73/) | ⚠️ Unaudited |
| TicTacToe | unknown | sonic | n/a | 2 deployments: sonic [`0x88217164e88201227c76a888d18ba507cd1dcb47`](./contracts/sonic-146/0x88217164e88201227c76a888d18ba507cd1dcb47/); sonic `0xaa0944ea173d300945ee5f13ae49560643e02c14` | ⚠️ Unaudited |
| TokenPairs | unknown | sonic | n/a | 2 deployments: sonic [`0x1109f1a00fbe5c44555a543540bb2db2c15c81db`](./contracts/sonic-146/0x1109f1a00fbe5c44555a543540bb2db2c15c81db/); sonic `0x36535d7bbfc61e2336faae501f38d77ccdf9cd43` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | sonic | n/a | 2 deployments: sonic [`0x3faf5b5d4355aee4b9381147dcac8d7f1b5a4876`](./contracts/sonic-146/0x3faf5b5d4355aee4b9381147dcac8d7f1b5a4876/); sonic `0x62a572120530a6cbbcafb7c6fb8c94fbdedcd70a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | sonic | n/a | 4 deployments: sonic [`0x89c31261221961acbae55917256d59257511df5e`](./contracts/sonic-146/0x89c31261221961acbae55917256d59257511df5e/); sonic `0xc1883ff64adac9014b40fab45d7dbd8e34992748`; sonic `0xd899927a68bc0c355a3eb0e089a6db815b4de721`; sonic `0xfb70405f550695feb9f6ccae17a210a612a993f8` | ⚠️ Unaudited |
| TSTTOKEN | token | arbitrum | n/a | [`0xc1f003474705e229ed8ad5c9aee017bbda853009`](./contracts/arbitrum-42161/0xc1f003474705e229ed8ad5c9aee017bbda853009/) | ⚠️ Unaudited |
| UpdateManager | unknown | sonic | n/a | 2 deployments: sonic [`0x5d3850377c22dd8b154161d07102b60ef4d3cf2b`](./contracts/sonic-146/0x5d3850377c22dd8b154161d07102b60ef4d3cf2b/); sonic `0xa432cfb45b61a19acde9e9b60f9d6b8f3420187a` | ⚠️ Unaudited |
| UpdateManager | unknown | sonic | n/a | [`0xb63f4eccf7799b1cd278e60d0d465017ccd5f0d3`](./contracts/sonic-146/0xb63f4eccf7799b1cd278e60d0d465017ccd5f0d3/) | ⚠️ Unaudited |
| WrappedLToken | unknown | sonic | n/a | 3 deployments: sonic [`0x058a726cca0a6235370262a802ea126a2ecdbdf1`](./contracts/sonic-146/0x058a726cca0a6235370262a802ea126a2ecdbdf1/); sonic `0x0b81338841113227bf1470c4e2a28d4c4f0feaa5`; sonic `0xa1f155e87f56f6f5de912c831e56d7cb8c0d4870` | ⚠️ Unaudited |
| WrappedLToken | unknown | sonic | n/a | 2 deployments: sonic [`0x20968165b7d2cdf33af632aab3e0539848d44bc8`](./contracts/sonic-146/0x20968165b7d2cdf33af632aab3e0539848d44bc8/); sonic `0x6ffc9a91e8c87fbe3744ceb6a134537c6a21b411` | ⚠️ Unaudited |
| WrappedLToken | unknown | sonic | n/a | 3 deployments: sonic [`0x2ed9031c6aaac0c42972e133776d133fcc40fd7e`](./contracts/sonic-146/0x2ed9031c6aaac0c42972e133776d133fcc40fd7e/); sonic `0x6e83612c73f124127d49ea642c392ff4d9eafd5b`; sonic `0xea7c3f040f1e663541be4dd9db713ce09773982d` | ⚠️ Unaudited |
| WrappedLToken | unknown | sonic | n/a | 3 deployments: sonic [`0x5baf90214294338838fad1abdb7b928922660933`](./contracts/sonic-146/0x5baf90214294338838fad1abdb7b928922660933/); sonic `0x841a13a5c4aa89d7c013e6f49e95188ed3e6c300`; sonic `0x883108311b43871be1e590c1ab0979e1e72b1df5` | ⚠️ Unaudited |
| WrappedLToken | unknown | sonic | n/a | 2 deployments: sonic [`0x5bb6643e0ca641830ae29a8267484f08c063c0b0`](./contracts/sonic-146/0x5bb6643e0ca641830ae29a8267484f08c063c0b0/); sonic `0xcc1bef907dce6c073332a75086708f53bde4f6f0` | ⚠️ Unaudited |
| WrappedLTokenSonic | unknown | sonic | n/a | 3 deployments: sonic [`0x2e6f1f4f364c8d115674fde3f1cce409d5977045`](./contracts/sonic-146/0x2e6f1f4f364c8d115674fde3f1cce409d5977045/); sonic `0xbb86bae893f8ea5bf34e708ecb10e82090331c01`; sonic `0xff95be862813739c5f2a25b8d3b3e166fe5dd49e` | ⚠️ Unaudited |
| WrappedLTokenSonic | unknown | sonic | n/a | [`0xed758d19dc4086775fe23c2ecc18f66fb7f68262`](./contracts/sonic-146/0xed758d19dc4086775fe23c2ecc18f66fb7f68262/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (41)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x588eb805042aa966eb282dcbbc36b2f41b287068` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb05c6239212f125677a7f78b4a3ea39535e18da2` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x0ae71c8f93af79417c5e2fd796ec2a288626f17c` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x352866b5c559a3292144263ddd937cc3b8b4c0e7` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x3665a6a80604269633f19d1d78a321b069462a21` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x3c769d0e8d21d380228dfb7918c6933bb6ecb6d4` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x588eb805042aa966eb282dcbbc36b2f41b287068` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x6697eefaff6e8cc532115c8d0a51164f92e0e324` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x7779f53fcbc0848353e238de2c975a4794313a11` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x78f6a74a0074a0353349e070368e6d2d587bb2e9` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x858657908d257cff5f72aba48b857c9b848ce686` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x9522bacee3e237cf81cd0a1823cf3dc751d887c8` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x9943afde8779fc05334c1577812b29b36fb4e674` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xaecac50ba44dc8fa2a4c8410e5215315ed3ca4b4` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc57afd1d249839c16bf9c0bf9ffa4200b256e6ce` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xe8500a284c144165e94c3ddc9ec3bd290a17cd00` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xe85df5c4e588fb0dd4af2436820429a3eb7ef797` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x06ff95bd22769e4c7067b571d92918b066ab145b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0ef8fce0cdf6fb07264ffb69e5db9b6b7be5d89f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1c72e6af94c00ed022782f3d7142f071b5d9fb4d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3ce42b5055bfe2a38fdba88b64380b2a1cd295dd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5b013eb7f1d375002dab18ddc7abd20055fa3ed2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x859b3592f77527d66cac6544d957db5fa913a853` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x93aaa26e893263f007d6bf25c7a6c8f27b3a0d29` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x95443a1fcc89c070a4d7a50ebee561c926bc79f1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xaa467ee2515fc7e573ad19afa54539c2f09dcade` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xeecc4caf68ea78e29edc81216c6120ae9848acf2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x061b0b71b87bd4ff6086011a17589ea08daa49a5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x20968165b7d2cdf33af632aab3e0539848d44bc8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3308b533e065cbabd6d3ec19f6707834c79c14c9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4eec09db589c882fba7c5d03065dfd20912fe877` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x530b6bae488b69cc558ad5b206b23090eeab2361` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x588eb805042aa966eb282dcbbc36b2f41b287068` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x768fa735a0d894784fe38f52124b246dd6347d19` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x902982c0c405091894ff82b3b51f180f99f75144` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa2b6487cc828ba9260013ec671f29a4a7778a64b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb644f32ec6cb162e766289a7b915b02d4611f667` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcc1bef907dce6c073332a75086708f53bde4f6f0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xeb163bff473abc556d8af259e8bf856fdbc6d108` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf1f9e5d806b6131fbc92bc165ec562175ba6f257` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x210482e0b5c29086f733e6dd44e2c19f32ae1757` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [report.md](https://github.com/LedgityLabs/LedgityYield/blob/main/report.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 33 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0xf55dde6c343cb893041fdcba386dbadffa4bc429`](./contracts/base-8453/0xf55dde6c343cb893041fdcba386dbadffa4bc429/) | Address | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x10ce08736900e6e3a46dcd9f4ddb2b44b82be5d4`](./contracts/sonic-146/0x10ce08736900e6e3a46dcd9f4ddb2b44b82be5d4/) | APRHistory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x70dee24e016cc09d423490d3040759a71a5b994f`](./contracts/base-8453/0x70dee24e016cc09d423490d3040759a71a5b994f/) | BalanceLogicLibrary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8aed5d3c5844d26671ae63be08ad2a6903bd293e`](./contracts/arbitrum-42161/0x8aed5d3c5844d26671ae63be08ad2a6903bd293e/) | BatchTokenSender | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x826c8465b6e6a0ca6454cc15703b60101f171d8e`](./contracts/sonic-146/0x826c8465b6e6a0ca6454cc15703b60101f171d8e/) | Bridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x9e70d16f16bbb97d1f1d5dab9fdb8e071f2b56cd`](./contracts/sonic-146/0x9e70d16f16bbb97d1f1d5dab9fdb8e071f2b56cd/) | Bridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x391071fe567d609e4af9d32de726d4c33679c7e2`](./contracts/sonic-146/0x391071fe567d609e4af9d32de726d4c33679c7e2/) | CircleTokenAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xba2b70309db7ec370e68240cf1f05580cdb0e563`](./contracts/sonic-146/0xba2b70309db7ec370e68240cf1f05580cdb0e563/) | CircleTokenAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x33e1cc3035a2f779a0bc7157d8f2b2d1ad956b00`](./contracts/sonic-146/0x33e1cc3035a2f779a0bc7157d8f2b2d1ad956b00/) | ConfigRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x236ae676cb5b107fa0cc545b181bc9166494b180`](./contracts/base-8453/0x236ae676cb5b107fa0cc545b181bc9166494b180/) | CouncilMerkleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x3fd4eaa6f9b0b46bb8a2dbe8c646524e141ee783`](./contracts/sonic-146/0x3fd4eaa6f9b0b46bb8a2dbe8c646524e141ee783/) | FiatTokenProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x229e64252e2901a424600e22c28a722404d92dcc`](./contracts/sonic-146/0x229e64252e2901a424600e22c28a722404d92dcc/) | FiatTokenV2_2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x23af4836dd12e9c40269965eb41a88aefd544c1a`](./contracts/sonic-146/0x23af4836dd12e9c40269965eb41a88aefd544c1a/) | FiatTokenV2_2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x35d51107aacd80ee8ad3751170d70cf4ce186535`](./contracts/sonic-146/0x35d51107aacd80ee8ad3751170d70cf4ce186535/) | FiatTokenV2_2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x60a3e35cc302bfa44cb288bc5a4f316fdb1adb42`](./contracts/base-8453/0x60a3e35cc302bfa44cb288bc5a4f316fdb1adb42/) | FiatTokenV2_2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x085b292a7c54767d5371fe939a4ad4dc9828d98f`](./contracts/base-8453/0x085b292a7c54767d5371fe939a4ad4dc9828d98f/) | FixedTermInvestmentVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x210482e0b5c29086f733e6dd44e2c19f32ae1757`](./contracts/ethereum-1/0x210482e0b5c29086f733e6dd44e2c19f32ae1757/) | GlobalAccessList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x071c9d3ee88c1d22f931e87bc70da086de4caf29`](./contracts/sonic-146/0x071c9d3ee88c1d22f931e87bc70da086de4caf29/) | GlobalAccessList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2166480d795f1d185ba940af58b905e3b33104e9`](./contracts/base-8453/0x2166480d795f1d185ba940af58b905e3b33104e9/) | GlobalAccessList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb05c6239212f125677a7f78b4a3ea39535e18da2`](./contracts/arbitrum-42161/0xb05c6239212f125677a7f78b4a3ea39535e18da2/) | GlobalAccessList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x2aff7737dd64390f18e76e39c977b6b0736b5a59`](./contracts/linea-59144/0x2aff7737dd64390f18e76e39c977b6b0736b5a59/) | GlobalAccessList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x06ff95bd22769e4c7067b571d92918b066ab145b`](./contracts/sonic-146/0x06ff95bd22769e4c7067b571d92918b066ab145b/) | GlobalBlacklist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x210482e0b5c29086f733e6dd44e2c19f32ae1757`](./contracts/sonic-146/0x210482e0b5c29086f733e6dd44e2c19f32ae1757/) | GlobalBlacklist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x210482e0b5c29086f733e6dd44e2c19f32ae1757`](./contracts/base-8453/0x210482e0b5c29086f733e6dd44e2c19f32ae1757/) | GlobalBlacklist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x896e3b079aa7a00413c074a5c888f3b96d4d3bca`](./contracts/arbitrum-42161/0x896e3b079aa7a00413c074a5c888f3b96d4d3bca/) | GlobalBlacklist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x896e3b079aa7a00413c074a5c888f3b96d4d3bca`](./contracts/linea-59144/0x896e3b079aa7a00413c074a5c888f3b96d4d3bca/) | GlobalBlacklist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x61097ff065f498a2e4f6006c6a6c506bd17e39e0`](./contracts/sonic-146/0x61097ff065f498a2e4f6006c6a6c506bd17e39e0/) | GlobalBlacklistSonic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x2aff7737dd64390f18e76e39c977b6b0736b5a59`](./contracts/sonic-146/0x2aff7737dd64390f18e76e39c977b6b0736b5a59/) | GlobalOwner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xeb163bff473abc556d8af259e8bf856fdbc6d108`](./contracts/sonic-146/0xeb163bff473abc556d8af259e8bf856fdbc6d108/) | GlobalOwner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2aff7737dd64390f18e76e39c977b6b0736b5a59`](./contracts/base-8453/0x2aff7737dd64390f18e76e39c977b6b0736b5a59/) | GlobalOwner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x36811e4b6d5f890bd0ac858b69499f9a7b2dc05f`](./contracts/arbitrum-42161/0x36811e4b6d5f890bd0ac858b69499f9a7b2dc05f/) | GlobalOwner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x36811e4b6d5f890bd0ac858b69499f9a7b2dc05f`](./contracts/linea-59144/0x36811e4b6d5f890bd0ac858b69499f9a7b2dc05f/) | GlobalOwner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x8ce2c4dadfda726a21b9f0f7064170ced31e9f5e`](./contracts/sonic-146/0x8ce2c4dadfda726a21b9f0f7064170ced31e9f5e/) | GlobalOwnerSonic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x12d5c708ae229cae0f6c712cb8feb1c914205c00`](./contracts/sonic-146/0x12d5c708ae229cae0f6c712cb8feb1c914205c00/) | GlobalPause | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x7f989877003be72f795c23889ab452ad58c59271`](./contracts/sonic-146/0x7f989877003be72f795c23889ab452ad58c59271/) | GlobalPause | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x12d5c708ae229cae0f6c712cb8feb1c914205c00`](./contracts/base-8453/0x12d5c708ae229cae0f6c712cb8feb1c914205c00/) | GlobalPause | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xd4568d313fa2d5c6eba37c9f30f6fb8d1c552ddd`](./contracts/arbitrum-42161/0xd4568d313fa2d5c6eba37c9f30f6fb8d1c552ddd/) | GlobalPause | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xd4568d313fa2d5c6eba37c9f30f6fb8d1c552ddd`](./contracts/linea-59144/0xd4568d313fa2d5c6eba37c9f30f6fb8d1c552ddd/) | GlobalPause | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x18fe72e5ef539284edac573ecf9ce062788f150c`](./contracts/sonic-146/0x18fe72e5ef539284edac573ecf9ce062788f150c/) | GlobalPauseSonic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x06ff95bd22769e4c7067b571d92918b066ab145b`](./contracts/ethereum-1/0x06ff95bd22769e4c7067b571d92918b066ab145b/) | KrystalYieldVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x055d20a70efd45ab839ae1a39603d0cfdbdd8a13`](./contracts/base-8453/0x055d20a70efd45ab839ae1a39603d0cfdbdd8a13/) | LDY | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x51231eb81d7c63c39ca1c4fc5801ed7def9e05ea`](./contracts/sonic-146/0x51231eb81d7c63c39ca1c4fc5801ed7def9e05ea/) | LDYStakingSonic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x12d5c708ae229cae0f6c712cb8feb1c914205c00`](./contracts/linea-59144/0x12d5c708ae229cae0f6c712cb8feb1c914205c00/) | LedgityDataProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x20968165b7d2cdf33af632aab3e0539848d44bc8`](./contracts/ethereum-1/0x20968165b7d2cdf33af632aab3e0539848d44bc8/) | LedgityYieldVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x76f1f8859a37c32d0764898f7f0b1585ed983f00`](./contracts/base-8453/0x76f1f8859a37c32d0764898f7f0b1585ed983f00/) | LedgityYieldVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0a1ba9ff031dce2f0c228b572154fb367e0df98a`](./contracts/arbitrum-42161/0x0a1ba9ff031dce2f0c228b572154fb367e0df98a/) | LedgityYieldVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x283f35b6406a0e19a786ed119869ef2c0fe157ee`](./contracts/arbitrum-42161/0x283f35b6406a0e19a786ed119869ef2c0fe157ee/) | LedgityYieldVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x20968165b7d2cdf33af632aab3e0539848d44bc8`](./contracts/linea-59144/0x20968165b7d2cdf33af632aab3e0539848d44bc8/) | LedgityYieldVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x22c32d67257d55c32d83c743e31da208d39ba165`](./contracts/sonic-146/0x22c32d67257d55c32d83c743e31da208d39ba165/) | LedgityYieldVaultSonic | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x3afcd7a95bffde892f1f4670583b9d0911951f64`](./contracts/sonic-146/0x3afcd7a95bffde892f1f4670583b9d0911951f64/) | LedgityYieldVaultSonic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x891611398b53bbaaa3db04c158218c319c87d554`](./contracts/base-8453/0x891611398b53bbaaa3db04c158218c319c87d554/) | LegacyStakingTransition | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x053714a436ea716e14b3430f2ee8e2488c83f16a`](./contracts/sonic-146/0x053714a436ea716e14b3430f2ee8e2488c83f16a/) | LeverageFiller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x12f407bfdbbe56ab19ecd389992f0f408810305a`](./contracts/sonic-146/0x12f407bfdbbe56ab19ecd389992f0f408810305a/) | LongTailIRM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x0a1ba9ff031dce2f0c228b572154fb367e0df98a`](./contracts/sonic-146/0x0a1ba9ff031dce2f0c228b572154fb367e0df98a/) | LTokenSignaler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x4eec09db589c882fba7c5d03065dfd20912fe877`](./contracts/sonic-146/0x4eec09db589c882fba7c5d03065dfd20912fe877/) | LTokenSignaler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4eec09db589c882fba7c5d03065dfd20912fe877`](./contracts/base-8453/0x4eec09db589c882fba7c5d03065dfd20912fe877/) | LTokenSignaler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3352b01e26f5e65ce2779ac01161a56e1b844398`](./contracts/arbitrum-42161/0x3352b01e26f5e65ce2779ac01161a56e1b844398/) | LTokenSignaler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5bffc5303719f0dc6050a2d8042936714109985f`](./contracts/arbitrum-42161/0x5bffc5303719f0dc6050a2d8042936714109985f/) | LTokenSignaler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x627ff3485a2e34916a6e1c0d0b350a422f5d89d1`](./contracts/arbitrum-42161/0x627ff3485a2e34916a6e1c0d0b350a422f5d89d1/) | LTokenSignaler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x5bffc5303719f0dc6050a2d8042936714109985f`](./contracts/linea-59144/0x5bffc5303719f0dc6050a2d8042936714109985f/) | LTokenSignaler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xba427517505b14c560854aed003304fc69cbadfb`](./contracts/linea-59144/0xba427517505b14c560854aed003304fc69cbadfb/) | LTokenSignaler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x5111c350e64692d914ae496166d54dfc0f565544`](./contracts/sonic-146/0x5111c350e64692d914ae496166d54dfc0f565544/) | LTokenSignalerSonic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x88dc8674339731a12a08624f455fd41fe2d6dc82`](./contracts/sonic-146/0x88dc8674339731a12a08624f455fd41fe2d6dc82/) | LTokenSonic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x18fad5b72113497e1c92570b6f517328d05505fa`](./contracts/sonic-146/0x18fad5b72113497e1c92570b6f517328d05505fa/) | MajorIRM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x114b64a8bf7bf0ab2a8a64a3e348307bd568726e`](./contracts/base-8453/0x114b64a8bf7bf0ab2a8a64a3e348307bd568726e/) | MasterMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xfb04979bda6546f114afcff2a78d35446d5a32e8`](./contracts/sonic-146/0xfb04979bda6546f114afcff2a78d35446d5a32e8/) | OracleRouterChainlink | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x31b57e9dadc3227400bf1742fc9692ebb3749a4b`](./contracts/sonic-146/0x31b57e9dadc3227400bf1742fc9692ebb3749a4b/) | PositionsManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x9d7aedefe90b880c5a9bed4fcbd3fad0ea5aa06c`](./contracts/arbitrum-42161/0x9d7aedefe90b880c5a9bed4fcbd3fad0ea5aa06c/) | PreMining | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x40dcf9db8b2335bcdc006e27db7f8148b0d267e3`](./contracts/sonic-146/0x40dcf9db8b2335bcdc006e27db7f8148b0d267e3/) | PrizeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x20116919299625b1b3e474d5a594a5b4ed13e95b`](./contracts/sonic-146/0x20116919299625b1b3e474d5a594a5b4ed13e95b/) | RfqEngine | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x01798076f71e0e48c37b670af7752d74d6e6bf1b`](./contracts/sonic-146/0x01798076f71e0e48c37b670af7752d74d6e6bf1b/) | SignatureChecker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x4bd77b487e2a8884b4e5528ff32b3917f7edefd5`](./contracts/sonic-146/0x4bd77b487e2a8884b4e5528ff32b3917f7edefd5/) | StableIRM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4eec09db589c882fba7c5d03065dfd20912fe877`](./contracts/ethereum-1/0x4eec09db589c882fba7c5d03065dfd20912fe877/) | StakingPositions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x902982c0c405091894ff82b3b51f180f99f75144`](./contracts/ethereum-1/0x902982c0c405091894ff82b3b51f180f99f75144/) | StakingPositions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0fcfdf9b6572116fa662a5cf8a074b51eb2d6d88`](./contracts/base-8453/0x0fcfdf9b6572116fa662a5cf8a074b51eb2d6d88/) | StakingPositions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x7ce9957464ecac16ae448dd312225292306f577b`](./contracts/base-8453/0x7ce9957464ecac16ae448dd312225292306f577b/) | StakingPositions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6e83612c73f124127d49ea642c392ff4d9eafd5b`](./contracts/arbitrum-42161/0x6e83612c73f124127d49ea642c392ff4d9eafd5b/) | StakingPositions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x588eb805042aa966eb282dcbbc36b2f41b287068`](./contracts/linea-59144/0x588eb805042aa966eb282dcbbc36b2f41b287068/) | StakingPositions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x891611398b53bbaaa3db04c158218c319c87d554`](./contracts/linea-59144/0x891611398b53bbaaa3db04c158218c319c87d554/) | StakingPositions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x655c94df33d39a126f9260f4b795b51336767cc8`](./contracts/sonic-146/0x655c94df33d39a126f9260f4b795b51336767cc8/) | StakingPositionsSonic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa87d32a42f208f428c186c4dbf6de9d3f93dba6f`](./contracts/ethereum-1/0xa87d32a42f208f428c186c4dbf6de9d3f93dba6f/) | StakingRewardsDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2ab82b69ab88e6174425234c4da50b2edfc217c1`](./contracts/base-8453/0x2ab82b69ab88e6174425234c4da50b2edfc217c1/) | StakingRewardsDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4340b97e82d048f7743b68e0e71ce27ce4307528`](./contracts/base-8453/0x4340b97e82d048f7743b68e0e71ce27ce4307528/) | StakingRewardsDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2ed9031c6aaac0c42972e133776d133fcc40fd7e`](./contracts/arbitrum-42161/0x2ed9031c6aaac0c42972e133776d133fcc40fd7e/) | StakingRewardsDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x841a13a5c4aa89d7c013e6f49e95188ed3e6c300`](./contracts/arbitrum-42161/0x841a13a5c4aa89d7c013e6f49e95188ed3e6c300/) | StakingRewardsDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x3c769d0e8d21d380228dfb7918c6933bb6ecb6d4`](./contracts/linea-59144/0x3c769d0e8d21d380228dfb7918c6933bb6ecb6d4/) | StakingRewardsDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x4eec09db589c882fba7c5d03065dfd20912fe877`](./contracts/linea-59144/0x4eec09db589c882fba7c5d03065dfd20912fe877/) | StakingRewardsDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x3bcb3c2992a1a4c2c97010c6d6789f6abcb40e4c`](./contracts/sonic-146/0x3bcb3c2992a1a4c2c97010c6d6789f6abcb40e4c/) | StakingRewardsDistributorSonic | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x4fec0c1c745c2d8ebb4fffa0d4e8d1395a135d73`](./contracts/sonic-146/0x4fec0c1c745c2d8ebb4fffa0d4e8d1395a135d73/) | Storage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x88217164e88201227c76a888d18ba507cd1dcb47`](./contracts/sonic-146/0x88217164e88201227c76a888d18ba507cd1dcb47/) | TicTacToe | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x1109f1a00fbe5c44555a543540bb2db2c15c81db`](./contracts/sonic-146/0x1109f1a00fbe5c44555a543540bb2db2c15c81db/) | TokenPairs | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xc1f003474705e229ed8ad5c9aee017bbda853009`](./contracts/arbitrum-42161/0xc1f003474705e229ed8ad5c9aee017bbda853009/) | TSTTOKEN | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x5d3850377c22dd8b154161d07102b60ef4d3cf2b`](./contracts/sonic-146/0x5d3850377c22dd8b154161d07102b60ef4d3cf2b/) | UpdateManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xb63f4eccf7799b1cd278e60d0d465017ccd5f0d3`](./contracts/sonic-146/0xb63f4eccf7799b1cd278e60d0d465017ccd5f0d3/) | UpdateManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x058a726cca0a6235370262a802ea126a2ecdbdf1`](./contracts/sonic-146/0x058a726cca0a6235370262a802ea126a2ecdbdf1/) | WrappedLToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x20968165b7d2cdf33af632aab3e0539848d44bc8`](./contracts/sonic-146/0x20968165b7d2cdf33af632aab3e0539848d44bc8/) | WrappedLToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x2ed9031c6aaac0c42972e133776d133fcc40fd7e`](./contracts/sonic-146/0x2ed9031c6aaac0c42972e133776d133fcc40fd7e/) | WrappedLToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x5baf90214294338838fad1abdb7b928922660933`](./contracts/sonic-146/0x5baf90214294338838fad1abdb7b928922660933/) | WrappedLToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x5bb6643e0ca641830ae29a8267484f08c063c0b0`](./contracts/sonic-146/0x5bb6643e0ca641830ae29a8267484f08c063c0b0/) | WrappedLToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x2e6f1f4f364c8d115674fde3f1cce409d5977045`](./contracts/sonic-146/0x2e6f1f4f364c8d115674fde3f1cce409d5977045/) | WrappedLTokenSonic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xed758d19dc4086775fe23c2ecc18f66fb7f68262`](./contracts/sonic-146/0xed758d19dc4086775fe23c2ecc18f66fb7f68262/) | WrappedLTokenSonic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 112 |
| upstream | 0 |
| standard_library | 9 |
| needs_review | 46 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=33

Fork inheritance lineage and inherited audits are included when available.
