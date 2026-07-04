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
| LDYStaking | unknown | sonic | n/a | 2 deployments: sonic [`0x53909d...430940`](./contracts/sonic-146/0x53909d0db82c6b145c602fb64e9d3013e4430940/); sonic `0x77ce97...83708f` | ✅ Audited |
| LDYStaking | unknown | sonic | n/a | 2 deployments: sonic [`0x891611...87d554`](./contracts/sonic-146/0x891611398b53bbaaa3db04c158218c319c87d554/); sonic `0x94ed3c...b03ed1` | ✅ Audited |
| LDYStaking | unknown | arbitrum | n/a | 7 deployments: base `0x8db842...bd3165`; arbitrum [`0x06f54b...660ab4`](./contracts/arbitrum-42161/0x06f54b7f27eec56616b951598baa3b84d7660ab4/); arbitrum `0x0dff38...1ead61`; arbitrum `0x4e80be...be2d02`; arbitrum `0x67efae...dc3e47`; linea [`0x06f54b...660ab4`](./contracts/linea-59144/0x06f54b7f27eec56616b951598baa3b84d7660ab4/); linea `0x627ff3...5d89d1` | ✅ Audited |
| LDYStaking | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x4ef075...a166ab`](./contracts/arbitrum-42161/0x4ef07549078673e98b16d9c9c2d1319117a166ab/); arbitrum `0xd42b10...2c4e53` | ✅ Audited |
| LToken | unknown | sonic | n/a | 3 deployments: sonic [`0x6cdb48...c3b2ca`](./contracts/sonic-146/0x6cdb485bedd95c5460eef6dfe1886d7a7bc3b2ca/); sonic `0xb05c62...e18da2`; sonic `0xc25030...c4a66b` | ✅ Audited |
| LToken | unknown | base | n/a | 2 deployments: base [`0x3c769d...ecb6d4`](./contracts/base-8453/0x3c769d0e8d21d380228dfb7918c6933bb6ecb6d4/); base `0x94ed3c...b03ed1` | ✅ Audited |
| LToken | unknown | base | n/a | 2 deployments: base [`0x77ce97...83708f`](./contracts/base-8453/0x77ce973744745310359b0d1a3415a34ff983708f/); base `0x9cfbf9...ed0bce` | ✅ Audited |
| LToken | token | arbitrum | n/a | 8 deployments: base `0x10ce08...2be5d4`; arbitrum [`0x0e7785...b7e9aa`](./contracts/arbitrum-42161/0x0e77850ac71e72f9c995a2f15b7cf1b528b7e9aa/); arbitrum `0x41b0ee...cc70f0`; arbitrum `0x8584bc...d6aee3`; arbitrum `0xa3b0db...84a21f`; arbitrum `0xb5c691...f9e2de`; linea `0x768fa7...347d19`; linea `0xb644f3...11f667` | ✅ Audited |
| LToken | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x346245...98cd99`](./contracts/arbitrum-42161/0x346245ed74cd6319f169228b980d91f17d98cd99/); arbitrum `0xd54d56...b77813` | ✅ Audited |
| LToken | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xba4275...cbadfb`](./contracts/arbitrum-42161/0xba427517505b14c560854aed003304fc69cbadfb/); arbitrum `0xeee2ca...39c331` | ✅ Audited |
| LToken | token | linea | n/a | [`0x4af215...b45b7a`](./contracts/linea-59144/0x4af215dbe27fc030f37f73109b85f421fab45b7a/) | ✅ Audited |

### ⚠️ Verified + Unaudited (115)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Address | unknown | base | n/a | [`0xf55dde...4bc429`](./contracts/base-8453/0xf55dde6c343cb893041fdcba386dbadffa4bc429/) | ⚠️ Unaudited |
| APRHistory | unknown | sonic | n/a | 6 deployments: sonic [`0x10ce08...2be5d4`](./contracts/sonic-146/0x10ce08736900e6e3a46dcd9f4ddb2b44b82be5d4/); sonic `0x8872b8...ed4bea`; sonic `0xe34603...737cbf`; base `0xe34603...737cbf`; arbitrum `0x3f0ff9...ad4ac5`; linea `0x3f0ff9...ad4ac5` | ⚠️ Unaudited |
| BalanceLogicLibrary | unknown | base | n/a | 5 deployments: ethereum `0xcc1bef...e4f6f0`; sonic `0xad4a00...b41028`; base [`0x70dee2...5b994f`](./contracts/base-8453/0x70dee24e016cc09d423490d3040759a71a5b994f/); arbitrum `0x7b25b4...23060b`; linea `0xe34603...737cbf` | ⚠️ Unaudited |
| BatchTokenSender | token | arbitrum | n/a | [`0x8aed5d...bd293e`](./contracts/arbitrum-42161/0x8aed5d3c5844d26671ae63be08ad2a6903bd293e/) | ⚠️ Unaudited |
| Bridge | unknown | sonic | n/a | 2 deployments: sonic [`0x826c84...171d8e`](./contracts/sonic-146/0x826c8465b6e6a0ca6454cc15703b60101f171d8e/); sonic `0xf77146...a3e079` | ⚠️ Unaudited |
| Bridge | unknown | sonic | n/a | 2 deployments: sonic [`0x9e70d1...2b56cd`](./contracts/sonic-146/0x9e70d16f16bbb97d1f1d5dab9fdb8e071f2b56cd/); sonic `0xf06a64...2cd698` | ⚠️ Unaudited |
| CircleTokenAdapter | unknown | sonic | n/a | [`0x391071...79c7e2`](./contracts/sonic-146/0x391071fe567d609e4af9d32de726d4c33679c7e2/) | ⚠️ Unaudited |
| CircleTokenAdapter | unknown | sonic | n/a | [`0xba2b70...b0e563`](./contracts/sonic-146/0xba2b70309db7ec370e68240cf1f05580cdb0e563/) | ⚠️ Unaudited |
| ConfigRegistry | unknown | sonic | n/a | 2 deployments: sonic [`0x33e1cc...956b00`](./contracts/sonic-146/0x33e1cc3035a2f779a0bc7157d8f2b2d1ad956b00/); sonic `0xffd7c8...b670f3` | ⚠️ Unaudited |
| CouncilMerkleDistributor | unknown | base | n/a | 2 deployments: base [`0x236ae6...94b180`](./contracts/base-8453/0x236ae676cb5b107fa0cc545b181bc9166494b180/); base `0x99bc49...8c6c4b` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | sonic | n/a | 5 deployments: sonic [`0x13e62b...56e955`](./contracts/sonic-146/0x13e62b8113590c46b273abe35bd86d4c7856e955/); sonic `0x536e1c...6d9462`; sonic `0x613904...888b21`; sonic `0x68f3c6...6c2a63`; sonic `0xbea9da...18b05d` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | sonic | n/a | 2 deployments: sonic [`0x4c0b5b...9e9ec7`](./contracts/sonic-146/0x4c0b5bfd9b7a970e24ce5d62af510258c99e9ec7/); sonic `0x910afa...d3caa5` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | sonic | n/a | 2 deployments: sonic [`0x5f9857...d9f3e8`](./contracts/sonic-146/0x5f985705a9ed0cd2561c8d69e77b66ce99d9f3e8/); sonic `0x65f235...7c3477` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | base | n/a | 2 deployments: base [`0x034b03...03e442`](./contracts/base-8453/0x034b0392536e703873c6db32a5d257d68f03e442/); base `0xde1cd8...028370` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | base | n/a | 2 deployments: base [`0x3c958e...ca7a15`](./contracts/base-8453/0x3c958eb9df9ec554fd394c5c66e0d339acca7a15/); base `0xa86d9b...f83e8e` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | base | n/a | 3 deployments: base [`0x833e36...44ee12`](./contracts/base-8453/0x833e364ae3580493c491530c78aafe50db44ee12/); base `0x8b72ec...bf5cb4`; base `0xe78d6c...89529f` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x154964...a1939a`](./contracts/arbitrum-42161/0x1549647606a71b2a79b85aeb54631b8ea2a1939a/); arbitrum `0xadf8d7...49e683` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x73b7ea...784a39`](./contracts/arbitrum-42161/0x73b7ea670ad41021a311f60b2be2fccb97784a39/); arbitrum `0xa3114c...b7dcc4` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x8b39bb...73a381`](./contracts/arbitrum-42161/0x8b39bb59e30c5716f556376c032be30ea073a381/); arbitrum `0x98002b...f97137` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | linea | n/a | 2 deployments: linea [`0x154964...a1939a`](./contracts/linea-59144/0x1549647606a71b2a79b85aeb54631b8ea2a1939a/); linea `0xadf8d7...49e683` | ⚠️ Unaudited |
| FiatTokenProxy | unknown | sonic | n/a | 2 deployments: sonic [`0x3fd4ea...1ee783`](./contracts/sonic-146/0x3fd4eaa6f9b0b46bb8a2dbe8c646524e141ee783/); sonic `0x7657f0...61fe35` | ⚠️ Unaudited |
| FiatTokenV2_2 | unknown | sonic | n/a | 2 deployments: sonic [`0x229e64...d92dcc`](./contracts/sonic-146/0x229e64252e2901a424600e22c28a722404d92dcc/); sonic `0x29219d...038894` | ⚠️ Unaudited |
| FiatTokenV2_2 | unknown | sonic | n/a | 2 deployments: sonic [`0x23af48...544c1a`](./contracts/sonic-146/0x23af4836dd12e9c40269965eb41a88aefd544c1a/); sonic `0xe715cb...b17e57` | ⚠️ Unaudited |
| FiatTokenV2_2 | unknown | sonic | n/a | 4 deployments: sonic [`0x35d511...186535`](./contracts/sonic-146/0x35d51107aacd80ee8ad3751170d70cf4ce186535/); sonic `0x767628...9a0801`; sonic `0xb070ad...47db87`; sonic `0xde95b3...9e09b3` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | base | n/a | [`0x60a3e3...1adb42`](./contracts/base-8453/0x60a3e35cc302bfa44cb288bc5a4f316fdb1adb42/) | ⚠️ Unaudited |
| FixedTermInvestmentVault | unknown | base | n/a | 2 deployments: base [`0x085b29...28d98f`](./contracts/base-8453/0x085b292a7c54767d5371fe939a4ad4dc9828d98f/); base `0x1f866f...b5b8d0` | ⚠️ Unaudited |
| GlobalAccessList | unknown | ethereum | n/a | 4 deployments: ethereum [`0x210482...ae1757`](./contracts/ethereum-1/0x210482e0b5c29086f733e6dd44e2c19f32ae1757/); ethereum `0x2aff77...6b5a59`; ethereum `0x43b3c6...9e698f`; ethereum `0x57791d...b3b925` | ⚠️ Unaudited |
| GlobalAccessList | unknown | sonic | n/a | 3 deployments: ethereum `0x12d5c7...205c00`; ethereum `0xf6cfb0...00d077`; sonic [`0x071c9d...4caf29`](./contracts/sonic-146/0x071c9d3ee88c1d22f931e87bc70da086de4caf29/) | ⚠️ Unaudited |
| GlobalAccessList | unknown | base | n/a | 2 deployments: base [`0x216648...3104e9`](./contracts/base-8453/0x2166480d795f1d185ba940af58b905e3b33104e9/); base `0xac3433...26c67b` | ⚠️ Unaudited |
| GlobalAccessList | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xb05c62...e18da2`](./contracts/arbitrum-42161/0xb05c6239212f125677a7f78b4a3ea39535e18da2/); arbitrum `0xc25030...c4a66b` | ⚠️ Unaudited |
| GlobalAccessList | unknown | linea | n/a | 2 deployments: linea [`0x2aff77...6b5a59`](./contracts/linea-59144/0x2aff7737dd64390f18e76e39c977b6b0736b5a59/); linea `0xf6cfb0...00d077` | ⚠️ Unaudited |
| GlobalBlacklist | unknown | sonic | n/a | 2 deployments: sonic [`0x06ff95...ab145b`](./contracts/sonic-146/0x06ff95bd22769e4c7067b571d92918b066ab145b/); sonic `0x93aaa2...3a0d29` | ⚠️ Unaudited |
| GlobalBlacklist | unknown | sonic | n/a | 2 deployments: sonic [`0x210482...ae1757`](./contracts/sonic-146/0x210482e0b5c29086f733e6dd44e2c19f32ae1757/); sonic `0x43b3c6...9e698f` | ⚠️ Unaudited |
| GlobalBlacklist | unknown | base | n/a | 2 deployments: base [`0x210482...ae1757`](./contracts/base-8453/0x210482e0b5c29086f733e6dd44e2c19f32ae1757/); base `0x43b3c6...9e698f` | ⚠️ Unaudited |
| GlobalBlacklist | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x896e3b...4d3bca`](./contracts/arbitrum-42161/0x896e3b079aa7a00413c074a5c888f3b96d4d3bca/); arbitrum `0xca55a2...9cf350` | ⚠️ Unaudited |
| GlobalBlacklist | unknown | linea | n/a | 2 deployments: linea [`0x896e3b...4d3bca`](./contracts/linea-59144/0x896e3b079aa7a00413c074a5c888f3b96d4d3bca/); linea `0xca55a2...9cf350` | ⚠️ Unaudited |
| GlobalBlacklistSonic | unknown | sonic | n/a | 2 deployments: sonic [`0x61097f...7e39e0`](./contracts/sonic-146/0x61097ff065f498a2e4f6006c6a6c506bd17e39e0/); sonic `0xcafa29...fcc37e` | ⚠️ Unaudited |
| GlobalOwner | unknown | sonic | n/a | 2 deployments: sonic [`0x2aff77...6b5a59`](./contracts/sonic-146/0x2aff7737dd64390f18e76e39c977b6b0736b5a59/); sonic `0xf6cfb0...00d077` | ⚠️ Unaudited |
| GlobalOwner | unknown | sonic | n/a | 2 deployments: sonic [`0xeb163b...c6d108`](./contracts/sonic-146/0xeb163bff473abc556d8af259e8bf856fdbc6d108/); sonic `0xf2663b...d93649` | ⚠️ Unaudited |
| GlobalOwner | unknown | base | n/a | 2 deployments: base [`0x2aff77...6b5a59`](./contracts/base-8453/0x2aff7737dd64390f18e76e39c977b6b0736b5a59/); base `0xf6cfb0...00d077` | ⚠️ Unaudited |
| GlobalOwner | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x36811e...2dc05f`](./contracts/arbitrum-42161/0x36811e4b6d5f890bd0ac858b69499f9a7b2dc05f/); arbitrum `0xe4af45...9f2462` | ⚠️ Unaudited |
| GlobalOwner | unknown | linea | n/a | 2 deployments: linea [`0x36811e...2dc05f`](./contracts/linea-59144/0x36811e4b6d5f890bd0ac858b69499f9a7b2dc05f/); linea `0xe4af45...9f2462` | ⚠️ Unaudited |
| GlobalOwnerSonic | unknown | sonic | n/a | 2 deployments: sonic [`0x8ce2c4...1e9f5e`](./contracts/sonic-146/0x8ce2c4dadfda726a21b9f0f7064170ced31e9f5e/); sonic `0xbbb6f6...450011` | ⚠️ Unaudited |
| GlobalPause | unknown | sonic | n/a | 2 deployments: sonic [`0x12d5c7...205c00`](./contracts/sonic-146/0x12d5c708ae229cae0f6c712cb8feb1c914205c00/); sonic `0x57791d...b3b925` | ⚠️ Unaudited |
| GlobalPause | unknown | sonic | n/a | 2 deployments: sonic [`0x7f9898...c59271`](./contracts/sonic-146/0x7f989877003be72f795c23889ab452ad58c59271/); sonic `0xa87d32...3dba6f` | ⚠️ Unaudited |
| GlobalPause | unknown | base | n/a | 2 deployments: base [`0x12d5c7...205c00`](./contracts/base-8453/0x12d5c708ae229cae0f6c712cb8feb1c914205c00/); base `0x57791d...b3b925` | ⚠️ Unaudited |
| GlobalPause | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xd4568d...552ddd`](./contracts/arbitrum-42161/0xd4568d313fa2d5c6eba37c9f30f6fb8d1c552ddd/); arbitrum `0xd4d4c6...bdd4db` | ⚠️ Unaudited |
| GlobalPause | unknown | linea | n/a | 2 deployments: linea [`0xd4568d...552ddd`](./contracts/linea-59144/0xd4568d313fa2d5c6eba37c9f30f6fb8d1c552ddd/); linea `0xd4d4c6...bdd4db` | ⚠️ Unaudited |
| GlobalPauseSonic | unknown | sonic | n/a | 2 deployments: sonic [`0x18fe72...8f150c`](./contracts/sonic-146/0x18fe72e5ef539284edac573ecf9ce062788f150c/); sonic `0x8925a8...4a4e1b` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | base | n/a | 2 deployments: base [`0x972c17...809053`](./contracts/base-8453/0x972c17d0ada071db4a0395505dd3ad0a80809053/); base `0xf25a51...f491c3` | ⚠️ Unaudited |
| KrystalYieldVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x06ff95...ab145b`](./contracts/ethereum-1/0x06ff95bd22769e4c7067b571d92918b066ab145b/); ethereum `0x7f9898...c59271` | ⚠️ Unaudited |
| LDY | unknown | base | n/a | 3 deployments: ethereum `0x482df7...ddfdbc`; base [`0x055d20...dd8a13`](./contracts/base-8453/0x055d20a70efd45ab839ae1a39603d0cfdbdd8a13/); arbitrum `0x999faf...0d07e1` | ⚠️ Unaudited |
| LDYStakingSonic | unknown | sonic | n/a | 2 deployments: sonic [`0x51231e...9e05ea`](./contracts/sonic-146/0x51231eb81d7c63c39ca1c4fc5801ed7def9e05ea/); sonic `0xbee6eb...35a87f` | ⚠️ Unaudited |
| LedgityDataProvider | unknown | linea | n/a | 6 deployments: ethereum `0xe34603...737cbf`; sonic `0xac5da8...72ea0d`; base `0xab4655...aac126`; base `0xda106c...818a39`; arbitrum `0x6cdb48...c3b2ca`; linea [`0x12d5c7...205c00`](./contracts/linea-59144/0x12d5c708ae229cae0f6c712cb8feb1c914205c00/) | ⚠️ Unaudited |
| LedgityYieldVault | unknown | ethereum | n/a | 3 deployments: ethereum [`0x209681...d44bc8`](./contracts/ethereum-1/0x20968165b7d2cdf33af632aab3e0539848d44bc8/); ethereum `0x3c769d...ecb6d4`; ethereum `0x6ffc9a...21b411` | ⚠️ Unaudited |
| LedgityYieldVault | unknown | base | n/a | 3 deployments: base [`0x76f1f8...983f00`](./contracts/base-8453/0x76f1f8859a37c32d0764898f7f0b1585ed983f00/); base `0x916f17...6a6e38`; base `0xfaa1e3...33b134` | ⚠️ Unaudited |
| LedgityYieldVault | core_logic | arbitrum | n/a | 6 deployments: ethereum `0x8db842...bd3165`; ethereum `0x94ed3c...b03ed1`; base `0x9bb3be...c74361`; base `0xf9eece...a9b56f`; arbitrum [`0x0a1ba9...0df98a`](./contracts/arbitrum-42161/0x0a1ba9ff031dce2f0c228b572154fb367e0df98a/); linea `0x57791d...b3b925` | ⚠️ Unaudited |
| LedgityYieldVault | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x283f35...e157ee`](./contracts/arbitrum-42161/0x283f35b6406a0e19a786ed119869ef2c0fe157ee/); arbitrum `0x5baf90...660933` | ⚠️ Unaudited |
| LedgityYieldVault | unknown | linea | n/a | 2 deployments: linea [`0x209681...d44bc8`](./contracts/linea-59144/0x20968165b7d2cdf33af632aab3e0539848d44bc8/); linea `0x43b3c6...9e698f` | ⚠️ Unaudited |
| LedgityYieldVaultSonic | core_logic | sonic | n/a | [`0x22c32d...9ba165`](./contracts/sonic-146/0x22c32d67257d55c32d83c743e31da208d39ba165/) | ⚠️ Unaudited |
| LedgityYieldVaultSonic | unknown | sonic | n/a | 2 deployments: sonic [`0x3afcd7...951f64`](./contracts/sonic-146/0x3afcd7a95bffde892f1f4670583b9d0911951f64/); sonic `0x65f75c...223001` | ⚠️ Unaudited |
| LegacyStakingTransition | unknown | base | n/a | 2 deployments: base [`0x891611...87d554`](./contracts/base-8453/0x891611398b53bbaaa3db04c158218c319c87d554/); base `0xd70b76...4fbab0` | ⚠️ Unaudited |
| LeverageFiller | unknown | sonic | n/a | 2 deployments: sonic [`0x053714...83f16a`](./contracts/sonic-146/0x053714a436ea716e14b3430f2ee8e2488c83f16a/); sonic `0xfe4a47...b31e7d` | ⚠️ Unaudited |
| LongTailIRM | unknown | sonic | n/a | [`0x12f407...10305a`](./contracts/sonic-146/0x12f407bfdbbe56ab19ecd389992f0f408810305a/) | ⚠️ Unaudited |
| LTokenSignaler | unknown | sonic | n/a | 2 deployments: sonic [`0x0a1ba9...0df98a`](./contracts/sonic-146/0x0a1ba9ff031dce2f0c228b572154fb367e0df98a/); sonic `0x283f35...e157ee` | ⚠️ Unaudited |
| LTokenSignaler | unknown | sonic | n/a | 2 deployments: sonic [`0x4eec09...2fe877`](./contracts/sonic-146/0x4eec09db589c882fba7c5d03065dfd20912fe877/); sonic `0x902982...f75144` | ⚠️ Unaudited |
| LTokenSignaler | unknown | base | n/a | 2 deployments: base [`0x4eec09...2fe877`](./contracts/base-8453/0x4eec09db589c882fba7c5d03065dfd20912fe877/); base `0xcc1bef...e4f6f0` | ⚠️ Unaudited |
| LTokenSignaler | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x3352b0...844398`](./contracts/arbitrum-42161/0x3352b01e26f5e65ce2779ac01161a56e1b844398/); arbitrum `0xd723df...dbca1d` | ⚠️ Unaudited |
| LTokenSignaler | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x5bffc5...09985f`](./contracts/arbitrum-42161/0x5bffc5303719f0dc6050a2d8042936714109985f/); arbitrum `0xe8a6c4...08e806` | ⚠️ Unaudited |
| LTokenSignaler | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x627ff3...5d89d1`](./contracts/arbitrum-42161/0x627ff3485a2e34916a6e1c0d0b350a422f5d89d1/); arbitrum `0xf97dfc...4bbaf4` | ⚠️ Unaudited |
| LTokenSignaler | unknown | linea | n/a | 2 deployments: linea [`0x5bffc5...09985f`](./contracts/linea-59144/0x5bffc5303719f0dc6050a2d8042936714109985f/); linea `0xe8a6c4...08e806` | ⚠️ Unaudited |
| LTokenSignaler | unknown | linea | n/a | 2 deployments: linea [`0xba4275...cbadfb`](./contracts/linea-59144/0xba427517505b14c560854aed003304fc69cbadfb/); linea `0xeee2ca...39c331` | ⚠️ Unaudited |
| LTokenSignalerSonic | unknown | sonic | n/a | 2 deployments: sonic [`0x5111c3...565544`](./contracts/sonic-146/0x5111c350e64692d914ae496166d54dfc0f565544/); sonic `0xf96af1...60a610` | ⚠️ Unaudited |
| LTokenSonic | unknown | sonic | n/a | 3 deployments: sonic [`0x88dc86...d6dc82`](./contracts/sonic-146/0x88dc8674339731a12a08624f455fd41fe2d6dc82/); sonic `0xd7ccab...e75e69`; sonic `0xedca8e...184cc6` | ⚠️ Unaudited |
| MajorIRM | unknown | sonic | n/a | [`0x18fad5...5505fa`](./contracts/sonic-146/0x18fad5b72113497e1c92570b6f517328d05505fa/) | ⚠️ Unaudited |
| MasterMinter | unknown | base | n/a | [`0x114b64...68726e`](./contracts/base-8453/0x114b64a8bf7bf0ab2a8a64a3e348307bd568726e/) | ⚠️ Unaudited |
| OracleRouterChainlink | operational_periphery | sonic | n/a | [`0xfb0497...5a32e8`](./contracts/sonic-146/0xfb04979bda6546f114afcff2a78d35446d5a32e8/) | ⚠️ Unaudited |
| PositionsManager | unknown | sonic | n/a | 2 deployments: sonic [`0x31b57e...749a4b`](./contracts/sonic-146/0x31b57e9dadc3227400bf1742fc9692ebb3749a4b/); sonic `0x31b68b...ef0303` | ⚠️ Unaudited |
| PreMining | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x9d7aed...5aa06c`](./contracts/arbitrum-42161/0x9d7aedefe90b880c5a9bed4fcbd3fad0ea5aa06c/); linea `0xd54d56...b77813` | ⚠️ Unaudited |
| PrizeToken | unknown | sonic | n/a | 2 deployments: sonic [`0x40dcf9...d267e3`](./contracts/sonic-146/0x40dcf9db8b2335bcdc006e27db7f8148b0d267e3/); sonic `0x78d976...d94c69` | ⚠️ Unaudited |
| RfqEngine | unknown | sonic | n/a | [`0x201169...13e95b`](./contracts/sonic-146/0x20116919299625b1b3e474d5a594a5b4ed13e95b/) | ⚠️ Unaudited |
| SafeProxy | unknown | base | n/a | [`0xe7616e...42acac`](./contracts/base-8453/0xe7616e98d2506e571e8f6e38e7bfd0b55642acac/) | ⚠️ Unaudited |
| SignatureChecker | unknown | sonic | n/a | 6 deployments: sonic [`0x017980...e6bf1b`](./contracts/sonic-146/0x01798076f71e0e48c37b670af7752d74d6e6bf1b/); sonic `0x26c060...7d4e81`; sonic `0x5d0311...68f887`; sonic `0x6edf3f...b6d820`; sonic `0xb4a197...2dd7cf`; sonic `0xb90f6a...b502fe` | ⚠️ Unaudited |
| StableIRM | unknown | sonic | n/a | [`0x4bd77b...edefd5`](./contracts/sonic-146/0x4bd77b487e2a8884b4e5528ff32b3917f7edefd5/) | ⚠️ Unaudited |
| StakingPositions | unknown | ethereum | n/a | 4 deployments: ethereum [`0x4eec09...2fe877`](./contracts/ethereum-1/0x4eec09db589c882fba7c5d03065dfd20912fe877/); ethereum `0xeb163b...c6d108`; base `0x54b36d...ef79ea`; arbitrum `0xea7c3f...73982d` | ⚠️ Unaudited |
| StakingPositions | unknown | ethereum | n/a | 2 deployments: ethereum [`0x902982...f75144`](./contracts/ethereum-1/0x902982c0c405091894ff82b3b51f180f99f75144/); ethereum `0xf2663b...d93649` | ⚠️ Unaudited |
| StakingPositions | unknown | base | n/a | 2 deployments: base [`0x0fcfdf...2d6d88`](./contracts/base-8453/0x0fcfdf9b6572116fa662a5cf8a074b51eb2d6d88/); base `0x4caee6...28fd2a` | ⚠️ Unaudited |
| StakingPositions | unknown | base | n/a | 2 deployments: base [`0x7ce995...6f577b`](./contracts/base-8453/0x7ce9957464ecac16ae448dd312225292306f577b/); base `0x97ca5d...d379d6` | ⚠️ Unaudited |
| StakingPositions | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x6e8361...eafd5b`](./contracts/arbitrum-42161/0x6e83612c73f124127d49ea642c392ff4d9eafd5b/); arbitrum `0x883108...2b1df5` | ⚠️ Unaudited |
| StakingPositions | unknown | linea | n/a | 2 deployments: linea [`0x588eb8...287068`](./contracts/linea-59144/0x588eb805042aa966eb282dcbbc36b2f41b287068/); linea `0xcc1bef...e4f6f0` | ⚠️ Unaudited |
| StakingPositions | unknown | linea | n/a | 2 deployments: linea [`0x891611...87d554`](./contracts/linea-59144/0x891611398b53bbaaa3db04c158218c319c87d554/); linea `0x8db842...bd3165` | ⚠️ Unaudited |
| StakingPositionsSonic | unknown | sonic | n/a | 2 deployments: sonic [`0x655c94...767cc8`](./contracts/sonic-146/0x655c94df33d39a126f9260f4b795b51336767cc8/); sonic `0xd1ec72...c5c306` | ⚠️ Unaudited |
| StakingRewardsDistributor | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa87d32...3dba6f`](./contracts/ethereum-1/0xa87d32a42f208f428c186c4dbf6de9d3f93dba6f/); ethereum `0xd8fefe...35b6bf` | ⚠️ Unaudited |
| StakingRewardsDistributor | unknown | base | n/a | 2 deployments: base [`0x2ab82b...c217c1`](./contracts/base-8453/0x2ab82b69ab88e6174425234c4da50b2edfc217c1/); base `0xb5f875...f9a384` | ⚠️ Unaudited |
| StakingRewardsDistributor | unknown | base | n/a | 2 deployments: base [`0x4340b9...307528`](./contracts/base-8453/0x4340b97e82d048f7743b68e0e71ce27ce4307528/); base `0x7143e7...128d4f` | ⚠️ Unaudited |
| StakingRewardsDistributor | operational_periphery | arbitrum | n/a | 3 deployments: ethereum `0x37eef1...a6c2bd`; base `0x6ebbff...fd37c2`; arbitrum [`0x2ed903...40fd7e`](./contracts/arbitrum-42161/0x2ed9031c6aaac0c42972e133776d133fcc40fd7e/) | ⚠️ Unaudited |
| StakingRewardsDistributor | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x841a13...e6c300`](./contracts/arbitrum-42161/0x841a13a5c4aa89d7c013e6f49e95188ed3e6c300/); arbitrum `0xeb4b05...6f7483` | ⚠️ Unaudited |
| StakingRewardsDistributor | unknown | linea | n/a | 2 deployments: linea [`0x3c769d...ecb6d4`](./contracts/linea-59144/0x3c769d0e8d21d380228dfb7918c6933bb6ecb6d4/); linea `0x94ed3c...b03ed1` | ⚠️ Unaudited |
| StakingRewardsDistributor | unknown | linea | n/a | 2 deployments: linea [`0x4eec09...2fe877`](./contracts/linea-59144/0x4eec09db589c882fba7c5d03065dfd20912fe877/); linea `0x902982...f75144` | ⚠️ Unaudited |
| StakingRewardsDistributorSonic | operational_periphery | sonic | n/a | 2 deployments: sonic [`0x3bcb3c...b40e4c`](./contracts/sonic-146/0x3bcb3c2992a1a4c2c97010c6d6789f6abcb40e4c/); sonic `0xb91985...68640e` | ⚠️ Unaudited |
| Storage | unknown | sonic | n/a | [`0x4fec0c...135d73`](./contracts/sonic-146/0x4fec0c1c745c2d8ebb4fffa0d4e8d1395a135d73/) | ⚠️ Unaudited |
| TicTacToe | unknown | sonic | n/a | 2 deployments: sonic [`0x882171...1dcb47`](./contracts/sonic-146/0x88217164e88201227c76a888d18ba507cd1dcb47/); sonic `0xaa0944...e02c14` | ⚠️ Unaudited |
| TokenPairs | unknown | sonic | n/a | 2 deployments: sonic [`0x1109f1...5c81db`](./contracts/sonic-146/0x1109f1a00fbe5c44555a543540bb2db2c15c81db/); sonic `0x36535d...f9cd43` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | sonic | n/a | 2 deployments: sonic [`0x3faf5b...5a4876`](./contracts/sonic-146/0x3faf5b5d4355aee4b9381147dcac8d7f1b5a4876/); sonic `0x62a572...dcd70a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | sonic | n/a | 4 deployments: sonic [`0x89c312...11df5e`](./contracts/sonic-146/0x89c31261221961acbae55917256d59257511df5e/); sonic `0xc1883f...992748`; sonic `0xd89992...4de721`; sonic `0xfb7040...a993f8` | ⚠️ Unaudited |
| TSTTOKEN | token | arbitrum | n/a | [`0xc1f003...853009`](./contracts/arbitrum-42161/0xc1f003474705e229ed8ad5c9aee017bbda853009/) | ⚠️ Unaudited |
| UpdateManager | unknown | sonic | n/a | 2 deployments: sonic [`0x5d3850...d3cf2b`](./contracts/sonic-146/0x5d3850377c22dd8b154161d07102b60ef4d3cf2b/); sonic `0xa432cf...20187a` | ⚠️ Unaudited |
| UpdateManager | unknown | sonic | n/a | [`0xb63f4e...d5f0d3`](./contracts/sonic-146/0xb63f4eccf7799b1cd278e60d0d465017ccd5f0d3/) | ⚠️ Unaudited |
| WrappedLToken | unknown | sonic | n/a | 3 deployments: sonic [`0x058a72...cdbdf1`](./contracts/sonic-146/0x058a726cca0a6235370262a802ea126a2ecdbdf1/); sonic `0x0b8133...0feaa5`; sonic `0xa1f155...0d4870` | ⚠️ Unaudited |
| WrappedLToken | unknown | sonic | n/a | 2 deployments: sonic [`0x209681...d44bc8`](./contracts/sonic-146/0x20968165b7d2cdf33af632aab3e0539848d44bc8/); sonic `0x6ffc9a...21b411` | ⚠️ Unaudited |
| WrappedLToken | unknown | sonic | n/a | 3 deployments: sonic [`0x2ed903...40fd7e`](./contracts/sonic-146/0x2ed9031c6aaac0c42972e133776d133fcc40fd7e/); sonic `0x6e8361...eafd5b`; sonic `0xea7c3f...73982d` | ⚠️ Unaudited |
| WrappedLToken | unknown | sonic | n/a | 3 deployments: sonic [`0x5baf90...660933`](./contracts/sonic-146/0x5baf90214294338838fad1abdb7b928922660933/); sonic `0x841a13...e6c300`; sonic `0x883108...2b1df5` | ⚠️ Unaudited |
| WrappedLToken | unknown | sonic | n/a | 2 deployments: sonic [`0x5bb664...63c0b0`](./contracts/sonic-146/0x5bb6643e0ca641830ae29a8267484f08c063c0b0/); sonic `0xcc1bef...e4f6f0` | ⚠️ Unaudited |
| WrappedLTokenSonic | unknown | sonic | n/a | 3 deployments: sonic [`0x2e6f1f...977045`](./contracts/sonic-146/0x2e6f1f4f364c8d115674fde3f1cce409d5977045/); sonic `0xbb86ba...331c01`; sonic `0xff95be...5dd49e` | ⚠️ Unaudited |
| WrappedLTokenSonic | unknown | sonic | n/a | [`0xed758d...f68262`](./contracts/sonic-146/0xed758d19dc4086775fe23c2ecc18f66fb7f68262/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | n/a | `0x588eb8...287068` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb05c62...e18da2` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x0ae71c...26f17c` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x352866...b4c0e7` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x3665a6...462a21` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x3c769d...ecb6d4` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x588eb8...287068` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x6697ee...e0e324` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x7779f5...313a11` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x78f6a7...7bb2e9` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x858657...8ce686` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x9522ba...d887c8` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x9943af...b4e674` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xaecac5...3ca4b4` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc57afd...56e6ce` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xe8500a...17cd00` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xe85df5...7ef797` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x06ff95...ab145b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0ef8fc...e5d89f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1c72e6...d9fb4d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3ce42b...d295dd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5b013e...fa3ed2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x859b35...13a853` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x93aaa2...3a0d29` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x95443a...bc79f1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xaa467e...9dcade` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xeecc4c...48acf2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x061b0b...aa49a5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x209681...d44bc8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3308b5...9c14c9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4eec09...2fe877` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x530b6b...ab2361` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x588eb8...287068` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x768fa7...347d19` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x902982...f75144` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa2b648...78a64b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb644f3...11f667` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcc1bef...e4f6f0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xeb163b...c6d108` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf1f9e5...a6f257` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x210482...ae1757` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [report.md](https://github.com/LedgityLabs/LedgityYield/blob/main/report.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 33 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0xf55dde...4bc429`](./contracts/base-8453/0xf55dde6c343cb893041fdcba386dbadffa4bc429/) | Address | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x10ce08...2be5d4`](./contracts/sonic-146/0x10ce08736900e6e3a46dcd9f4ddb2b44b82be5d4/) | APRHistory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x70dee2...5b994f`](./contracts/base-8453/0x70dee24e016cc09d423490d3040759a71a5b994f/) | BalanceLogicLibrary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8aed5d...bd293e`](./contracts/arbitrum-42161/0x8aed5d3c5844d26671ae63be08ad2a6903bd293e/) | BatchTokenSender | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x826c84...171d8e`](./contracts/sonic-146/0x826c8465b6e6a0ca6454cc15703b60101f171d8e/) | Bridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x9e70d1...2b56cd`](./contracts/sonic-146/0x9e70d16f16bbb97d1f1d5dab9fdb8e071f2b56cd/) | Bridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x391071...79c7e2`](./contracts/sonic-146/0x391071fe567d609e4af9d32de726d4c33679c7e2/) | CircleTokenAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xba2b70...b0e563`](./contracts/sonic-146/0xba2b70309db7ec370e68240cf1f05580cdb0e563/) | CircleTokenAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x33e1cc...956b00`](./contracts/sonic-146/0x33e1cc3035a2f779a0bc7157d8f2b2d1ad956b00/) | ConfigRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x236ae6...94b180`](./contracts/base-8453/0x236ae676cb5b107fa0cc545b181bc9166494b180/) | CouncilMerkleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x3fd4ea...1ee783`](./contracts/sonic-146/0x3fd4eaa6f9b0b46bb8a2dbe8c646524e141ee783/) | FiatTokenProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x229e64...d92dcc`](./contracts/sonic-146/0x229e64252e2901a424600e22c28a722404d92dcc/) | FiatTokenV2_2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x23af48...544c1a`](./contracts/sonic-146/0x23af4836dd12e9c40269965eb41a88aefd544c1a/) | FiatTokenV2_2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x35d511...186535`](./contracts/sonic-146/0x35d51107aacd80ee8ad3751170d70cf4ce186535/) | FiatTokenV2_2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x60a3e3...1adb42`](./contracts/base-8453/0x60a3e35cc302bfa44cb288bc5a4f316fdb1adb42/) | FiatTokenV2_2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x085b29...28d98f`](./contracts/base-8453/0x085b292a7c54767d5371fe939a4ad4dc9828d98f/) | FixedTermInvestmentVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x210482...ae1757`](./contracts/ethereum-1/0x210482e0b5c29086f733e6dd44e2c19f32ae1757/) | GlobalAccessList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x071c9d...4caf29`](./contracts/sonic-146/0x071c9d3ee88c1d22f931e87bc70da086de4caf29/) | GlobalAccessList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x216648...3104e9`](./contracts/base-8453/0x2166480d795f1d185ba940af58b905e3b33104e9/) | GlobalAccessList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb05c62...e18da2`](./contracts/arbitrum-42161/0xb05c6239212f125677a7f78b4a3ea39535e18da2/) | GlobalAccessList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x2aff77...6b5a59`](./contracts/linea-59144/0x2aff7737dd64390f18e76e39c977b6b0736b5a59/) | GlobalAccessList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x06ff95...ab145b`](./contracts/sonic-146/0x06ff95bd22769e4c7067b571d92918b066ab145b/) | GlobalBlacklist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x210482...ae1757`](./contracts/sonic-146/0x210482e0b5c29086f733e6dd44e2c19f32ae1757/) | GlobalBlacklist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x210482...ae1757`](./contracts/base-8453/0x210482e0b5c29086f733e6dd44e2c19f32ae1757/) | GlobalBlacklist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x896e3b...4d3bca`](./contracts/arbitrum-42161/0x896e3b079aa7a00413c074a5c888f3b96d4d3bca/) | GlobalBlacklist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x896e3b...4d3bca`](./contracts/linea-59144/0x896e3b079aa7a00413c074a5c888f3b96d4d3bca/) | GlobalBlacklist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x61097f...7e39e0`](./contracts/sonic-146/0x61097ff065f498a2e4f6006c6a6c506bd17e39e0/) | GlobalBlacklistSonic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x2aff77...6b5a59`](./contracts/sonic-146/0x2aff7737dd64390f18e76e39c977b6b0736b5a59/) | GlobalOwner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xeb163b...c6d108`](./contracts/sonic-146/0xeb163bff473abc556d8af259e8bf856fdbc6d108/) | GlobalOwner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2aff77...6b5a59`](./contracts/base-8453/0x2aff7737dd64390f18e76e39c977b6b0736b5a59/) | GlobalOwner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x36811e...2dc05f`](./contracts/arbitrum-42161/0x36811e4b6d5f890bd0ac858b69499f9a7b2dc05f/) | GlobalOwner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x36811e...2dc05f`](./contracts/linea-59144/0x36811e4b6d5f890bd0ac858b69499f9a7b2dc05f/) | GlobalOwner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x8ce2c4...1e9f5e`](./contracts/sonic-146/0x8ce2c4dadfda726a21b9f0f7064170ced31e9f5e/) | GlobalOwnerSonic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x12d5c7...205c00`](./contracts/sonic-146/0x12d5c708ae229cae0f6c712cb8feb1c914205c00/) | GlobalPause | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x7f9898...c59271`](./contracts/sonic-146/0x7f989877003be72f795c23889ab452ad58c59271/) | GlobalPause | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x12d5c7...205c00`](./contracts/base-8453/0x12d5c708ae229cae0f6c712cb8feb1c914205c00/) | GlobalPause | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xd4568d...552ddd`](./contracts/arbitrum-42161/0xd4568d313fa2d5c6eba37c9f30f6fb8d1c552ddd/) | GlobalPause | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xd4568d...552ddd`](./contracts/linea-59144/0xd4568d313fa2d5c6eba37c9f30f6fb8d1c552ddd/) | GlobalPause | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x18fe72...8f150c`](./contracts/sonic-146/0x18fe72e5ef539284edac573ecf9ce062788f150c/) | GlobalPauseSonic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x06ff95...ab145b`](./contracts/ethereum-1/0x06ff95bd22769e4c7067b571d92918b066ab145b/) | KrystalYieldVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x055d20...dd8a13`](./contracts/base-8453/0x055d20a70efd45ab839ae1a39603d0cfdbdd8a13/) | LDY | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x51231e...9e05ea`](./contracts/sonic-146/0x51231eb81d7c63c39ca1c4fc5801ed7def9e05ea/) | LDYStakingSonic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x12d5c7...205c00`](./contracts/linea-59144/0x12d5c708ae229cae0f6c712cb8feb1c914205c00/) | LedgityDataProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x209681...d44bc8`](./contracts/ethereum-1/0x20968165b7d2cdf33af632aab3e0539848d44bc8/) | LedgityYieldVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x76f1f8...983f00`](./contracts/base-8453/0x76f1f8859a37c32d0764898f7f0b1585ed983f00/) | LedgityYieldVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0a1ba9...0df98a`](./contracts/arbitrum-42161/0x0a1ba9ff031dce2f0c228b572154fb367e0df98a/) | LedgityYieldVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x283f35...e157ee`](./contracts/arbitrum-42161/0x283f35b6406a0e19a786ed119869ef2c0fe157ee/) | LedgityYieldVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x209681...d44bc8`](./contracts/linea-59144/0x20968165b7d2cdf33af632aab3e0539848d44bc8/) | LedgityYieldVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x22c32d...9ba165`](./contracts/sonic-146/0x22c32d67257d55c32d83c743e31da208d39ba165/) | LedgityYieldVaultSonic | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x3afcd7...951f64`](./contracts/sonic-146/0x3afcd7a95bffde892f1f4670583b9d0911951f64/) | LedgityYieldVaultSonic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x891611...87d554`](./contracts/base-8453/0x891611398b53bbaaa3db04c158218c319c87d554/) | LegacyStakingTransition | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x053714...83f16a`](./contracts/sonic-146/0x053714a436ea716e14b3430f2ee8e2488c83f16a/) | LeverageFiller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x12f407...10305a`](./contracts/sonic-146/0x12f407bfdbbe56ab19ecd389992f0f408810305a/) | LongTailIRM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x0a1ba9...0df98a`](./contracts/sonic-146/0x0a1ba9ff031dce2f0c228b572154fb367e0df98a/) | LTokenSignaler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x4eec09...2fe877`](./contracts/sonic-146/0x4eec09db589c882fba7c5d03065dfd20912fe877/) | LTokenSignaler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4eec09...2fe877`](./contracts/base-8453/0x4eec09db589c882fba7c5d03065dfd20912fe877/) | LTokenSignaler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3352b0...844398`](./contracts/arbitrum-42161/0x3352b01e26f5e65ce2779ac01161a56e1b844398/) | LTokenSignaler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5bffc5...09985f`](./contracts/arbitrum-42161/0x5bffc5303719f0dc6050a2d8042936714109985f/) | LTokenSignaler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x627ff3...5d89d1`](./contracts/arbitrum-42161/0x627ff3485a2e34916a6e1c0d0b350a422f5d89d1/) | LTokenSignaler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x5bffc5...09985f`](./contracts/linea-59144/0x5bffc5303719f0dc6050a2d8042936714109985f/) | LTokenSignaler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xba4275...cbadfb`](./contracts/linea-59144/0xba427517505b14c560854aed003304fc69cbadfb/) | LTokenSignaler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x5111c3...565544`](./contracts/sonic-146/0x5111c350e64692d914ae496166d54dfc0f565544/) | LTokenSignalerSonic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x88dc86...d6dc82`](./contracts/sonic-146/0x88dc8674339731a12a08624f455fd41fe2d6dc82/) | LTokenSonic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x18fad5...5505fa`](./contracts/sonic-146/0x18fad5b72113497e1c92570b6f517328d05505fa/) | MajorIRM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x114b64...68726e`](./contracts/base-8453/0x114b64a8bf7bf0ab2a8a64a3e348307bd568726e/) | MasterMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xfb0497...5a32e8`](./contracts/sonic-146/0xfb04979bda6546f114afcff2a78d35446d5a32e8/) | OracleRouterChainlink | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x31b57e...749a4b`](./contracts/sonic-146/0x31b57e9dadc3227400bf1742fc9692ebb3749a4b/) | PositionsManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x9d7aed...5aa06c`](./contracts/arbitrum-42161/0x9d7aedefe90b880c5a9bed4fcbd3fad0ea5aa06c/) | PreMining | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x40dcf9...d267e3`](./contracts/sonic-146/0x40dcf9db8b2335bcdc006e27db7f8148b0d267e3/) | PrizeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x201169...13e95b`](./contracts/sonic-146/0x20116919299625b1b3e474d5a594a5b4ed13e95b/) | RfqEngine | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x017980...e6bf1b`](./contracts/sonic-146/0x01798076f71e0e48c37b670af7752d74d6e6bf1b/) | SignatureChecker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x4bd77b...edefd5`](./contracts/sonic-146/0x4bd77b487e2a8884b4e5528ff32b3917f7edefd5/) | StableIRM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4eec09...2fe877`](./contracts/ethereum-1/0x4eec09db589c882fba7c5d03065dfd20912fe877/) | StakingPositions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x902982...f75144`](./contracts/ethereum-1/0x902982c0c405091894ff82b3b51f180f99f75144/) | StakingPositions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0fcfdf...2d6d88`](./contracts/base-8453/0x0fcfdf9b6572116fa662a5cf8a074b51eb2d6d88/) | StakingPositions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x7ce995...6f577b`](./contracts/base-8453/0x7ce9957464ecac16ae448dd312225292306f577b/) | StakingPositions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6e8361...eafd5b`](./contracts/arbitrum-42161/0x6e83612c73f124127d49ea642c392ff4d9eafd5b/) | StakingPositions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x588eb8...287068`](./contracts/linea-59144/0x588eb805042aa966eb282dcbbc36b2f41b287068/) | StakingPositions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x891611...87d554`](./contracts/linea-59144/0x891611398b53bbaaa3db04c158218c319c87d554/) | StakingPositions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x655c94...767cc8`](./contracts/sonic-146/0x655c94df33d39a126f9260f4b795b51336767cc8/) | StakingPositionsSonic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa87d32...3dba6f`](./contracts/ethereum-1/0xa87d32a42f208f428c186c4dbf6de9d3f93dba6f/) | StakingRewardsDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2ab82b...c217c1`](./contracts/base-8453/0x2ab82b69ab88e6174425234c4da50b2edfc217c1/) | StakingRewardsDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4340b9...307528`](./contracts/base-8453/0x4340b97e82d048f7743b68e0e71ce27ce4307528/) | StakingRewardsDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2ed903...40fd7e`](./contracts/arbitrum-42161/0x2ed9031c6aaac0c42972e133776d133fcc40fd7e/) | StakingRewardsDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x841a13...e6c300`](./contracts/arbitrum-42161/0x841a13a5c4aa89d7c013e6f49e95188ed3e6c300/) | StakingRewardsDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x3c769d...ecb6d4`](./contracts/linea-59144/0x3c769d0e8d21d380228dfb7918c6933bb6ecb6d4/) | StakingRewardsDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x4eec09...2fe877`](./contracts/linea-59144/0x4eec09db589c882fba7c5d03065dfd20912fe877/) | StakingRewardsDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x3bcb3c...b40e4c`](./contracts/sonic-146/0x3bcb3c2992a1a4c2c97010c6d6789f6abcb40e4c/) | StakingRewardsDistributorSonic | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x4fec0c...135d73`](./contracts/sonic-146/0x4fec0c1c745c2d8ebb4fffa0d4e8d1395a135d73/) | Storage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x882171...1dcb47`](./contracts/sonic-146/0x88217164e88201227c76a888d18ba507cd1dcb47/) | TicTacToe | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x1109f1...5c81db`](./contracts/sonic-146/0x1109f1a00fbe5c44555a543540bb2db2c15c81db/) | TokenPairs | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xc1f003...853009`](./contracts/arbitrum-42161/0xc1f003474705e229ed8ad5c9aee017bbda853009/) | TSTTOKEN | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x5d3850...d3cf2b`](./contracts/sonic-146/0x5d3850377c22dd8b154161d07102b60ef4d3cf2b/) | UpdateManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xb63f4e...d5f0d3`](./contracts/sonic-146/0xb63f4eccf7799b1cd278e60d0d465017ccd5f0d3/) | UpdateManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x058a72...cdbdf1`](./contracts/sonic-146/0x058a726cca0a6235370262a802ea126a2ecdbdf1/) | WrappedLToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x209681...d44bc8`](./contracts/sonic-146/0x20968165b7d2cdf33af632aab3e0539848d44bc8/) | WrappedLToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x2ed903...40fd7e`](./contracts/sonic-146/0x2ed9031c6aaac0c42972e133776d133fcc40fd7e/) | WrappedLToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x5baf90...660933`](./contracts/sonic-146/0x5baf90214294338838fad1abdb7b928922660933/) | WrappedLToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x5bb664...63c0b0`](./contracts/sonic-146/0x5bb6643e0ca641830ae29a8267484f08c063c0b0/) | WrappedLToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x2e6f1f...977045`](./contracts/sonic-146/0x2e6f1f4f364c8d115674fde3f1cce409d5977045/) | WrappedLTokenSonic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xed758d...f68262`](./contracts/sonic-146/0xed758d19dc4086775fe23c2ecc18f66fb7f68262/) | WrappedLTokenSonic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
