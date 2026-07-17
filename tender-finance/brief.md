# Agentic Audit Brief: Tender Finance

## Project Overview

- Project: Tender Finance (`tender-finance`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:00.855Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: arbitrum
- Contract surface: 69 unique implementations (101 raw deployments)
- DeFi Llama TVL: $1,113,583.22
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 36 project-authored contract(s) across 1 chain(s); 18 ERC20 tokens, 1 Chainlink feed; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 20 common project-authored base contract(s) (ctokeninterface, ctokenstorage, cerc20interface). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 266; live-surface contracts included: 99 (48 live, 51 unknown).
- Excluded by liveness: 167 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/18 (0.0%)
- Deployed-live implementations: 18 of 69 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/19
- Verified + Unaudited implementations: 19
- Verified by bytecode match: 0
- Unverified implementations: 50
- Unique implementations: 69
- Raw deployments: 101
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (19)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AlgebraPool | core_logic | arbitrum | n/a | [`0xe9d3e6811d1be8ba40a9273ebec6ff09fe2a6741`](./contracts/arbitrum-42161/0xe9d3e6811d1be8ba40a9273ebec6ff09fe2a6741/) | ⚠️ Unaudited |
| Burner | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x3e0b30de227761d692260a01e04e364a622011f9`](./contracts/arbitrum-42161/0x3e0b30de227761d692260a01e04e364a622011f9/); arbitrum `0xd9f5b3ed121ea5da3a337639015b6bc60b092eaa` | ⚠️ Unaudited |
| CErc20Compounded | token | arbitrum | n/a | [`0xff2073d3810754d6da4783235c8647e11e43c943`](./contracts/arbitrum-42161/0xff2073d3810754d6da4783235c8647e11e43c943/) | ⚠️ Unaudited |
| CErc20DelegateGmx | token | arbitrum | n/a | 2 deployments: arbitrum [`0x20a6768f6aabf66b787985ec6ce0ebea6d7ad497`](./contracts/arbitrum-42161/0x20a6768f6aabf66b787985ec6ce0ebea6d7ad497/); arbitrum `0x628650b551525a90c3a335f65994cdd28d13ac5a` | ⚠️ Unaudited |
| CEther | unknown | arbitrum | n/a | [`0x0706905b2b21574defcf00b5fc48068995fcdcdf`](./contracts/arbitrum-42161/0x0706905b2b21574defcf00b5fc48068995fcdcdf/) | ⚠️ Unaudited |
| Comptroller | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x0e9109c678ba6e807dd53ecf7a5a1e658681ad70`](./contracts/arbitrum-42161/0x0e9109c678ba6e807dd53ecf7a5a1e658681ad70/); arbitrum `0x49ea2c991290ca13f57ae2b8ca98bc6140925db3` | ⚠️ Unaudited |
| Comptroller | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x1ffddc9578521602c9aadb5dbc220a553a6b4d2e`](./contracts/arbitrum-42161/0x1ffddc9578521602c9aadb5dbc220a553a6b4d2e/); arbitrum `0xeed247ba513a8d6f78be9318399f5ed1a4808f8e` | ⚠️ Unaudited |
| Comptroller | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x4213135a86e01dfa62125b6ad17d96d302596e8e`](./contracts/arbitrum-42161/0x4213135a86e01dfa62125b6ad17d96d302596e8e/); arbitrum `0xaeae92590cda2f5e61f6007a8e083a42dc578230` | ⚠️ Unaudited |
| Comptroller | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x4f2a26f1c4998a8c6ae9a1ee24d2b439abf749b5`](./contracts/arbitrum-42161/0x4f2a26f1c4998a8c6ae9a1ee24d2b439abf749b5/); arbitrum `0x60437fee4ddbda6e47955b6255e312f1ed067033` | ⚠️ Unaudited |
| Comptroller | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x5d57328423bed206e0ee41c32bbce4252e303d54`](./contracts/arbitrum-42161/0x5d57328423bed206e0ee41c32bbce4252e303d54/); arbitrum `0xb7c1a9dca749fc7d626fe46d14be6e371deeb278` | ⚠️ Unaudited |
| EsTND | unknown | arbitrum | n/a | 6 deployments: arbitrum [`0x4113805f8e2098cf4bc20321dbc210c0869159c9`](./contracts/arbitrum-42161/0x4113805f8e2098cf4bc20321dbc210c0869159c9/); arbitrum `0x4c3d0bd0e8b2d94896450b05fcaa48a307ee2af7`; arbitrum `0x6893ef7a2cee673dc818ded62b1ed1e2b06c9719`; arbitrum `0xd49f6e2f3f4ca0378199603a1426e36d7ed736ed`; arbitrum `0xf518be0b2a4df39d9e4589cc551be827fb53100d`; arbitrum `0xff9bd42211f12e2de6599725895f37b4ce654ab2` | ⚠️ Unaudited |
| HandledImpl | unknown | arbitrum | n/a | 14 deployments: arbitrum [`0x068485a0f964b4c3d395059a19a05a8741c48b4e`](./contracts/arbitrum-42161/0x068485a0f964b4c3d395059a19a05a8741c48b4e/); arbitrum `0x0a2f8b6223eb7de26c810932cca488a4936cf391`; arbitrum `0x27846a0f11edc3d59ea227baebdfa1330a69b9ab`; arbitrum `0x4180f39294c94f046362c2dbc89f2df7786842c3`; arbitrum `0x4a5806a3c4fbb32f027240f80b18b26e40bf7e31`; arbitrum `0x80aefb7dade25542cc2f558ee605ac2fc974ceb9`; arbitrum `0x87d06b55e122a0d0217d9a4f85e983ac3d7a1c35`; arbitrum `0x8b44d3d286c64c8aaa5d445cfabf7a6f4e2b3a71`; arbitrum `0xb287180147ef1a97cbfb07e2f1788b75df2f6299`; arbitrum `0xb5dbdb01b08bff12e822eb28259ecceb6cc91529`; arbitrum `0xb60ef53ba18bd85ab642c2f78df13e7abccdcb9c`; arbitrum `0xc571c3ce36131dfb70a9d87a8ab8f80f40874a76`; arbitrum `0xc6121d58e01b3f5c88eb8a661770db0046523539`; arbitrum `0xe4843e44342617024f6b9d615dffbe8858f8ea16` | ⚠️ Unaudited |
| InstantVester | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x57437f98ce4fd4d3cc1827b0095d93184827c46f`](./contracts/arbitrum-42161/0x57437f98ce4fd4d3cc1827b0095d93184827c46f/); arbitrum `0xc2378a22aec953dc5179c8eb49bab695ab9d8df6` | ⚠️ Unaudited |
| JumpRateModelV2 | operational_periphery | arbitrum | n/a | [`0xc2933eff32188e4655887cdc9c707a77e1229595`](./contracts/arbitrum-42161/0xc2933eff32188e4655887cdc9c707a77e1229595/) | ⚠️ Unaudited |
| MintableBaseToken | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x0d2ebf71afdfafe8e3fde3eaf9c502896f9e3718`](./contracts/arbitrum-42161/0x0d2ebf71afdfafe8e3fde3eaf9c502896f9e3718/); arbitrum `0x417d087cbeba9c0ee3725ff6dff281c65a8d2433`; arbitrum `0x68407fbd63d1694237357fe343bf0edd340a161c` | ⚠️ Unaudited |
| TenderPriceOracle | unknown | arbitrum | n/a | 5 deployments: arbitrum [`0x0c261270ed2e036c9525243e5dd0e95f824d77d2`](./contracts/arbitrum-42161/0x0c261270ed2e036c9525243e5dd0e95f824d77d2/); arbitrum `0x4e8105e29b94f86552fb0a0e9627f4116b4637ba`; arbitrum `0x89963548ec3e76e92b3b4217a34f3b42432171db`; arbitrum `0xa11bade71df9005f4cfb6ffecd266ed8046fd5c6`; arbitrum `0xc2dd40025e56faca2e8598011170d088ca150aec` | ⚠️ Unaudited |
| TND | unknown | arbitrum | n/a | [`0xc47d9753f3b32aa9548a7c3f30b6aec3b2d2798c`](./contracts/arbitrum-42161/0xc47d9753f3b32aa9548a7c3f30b6aec3b2d2798c/) | ⚠️ Unaudited |
| Unitroller | unknown | arbitrum | n/a | [`0xc825a185036516087c5ea8d22da924520497b8bf`](./contracts/arbitrum-42161/0xc825a185036516087c5ea8d22da924520497b8bf/) | ⚠️ Unaudited |
| WithdrawLever | unknown | arbitrum | n/a | [`0xd16c3a58e083fec73a271a6954dc3bc2e57f59a6`](./contracts/arbitrum-42161/0xd16c3a58e083fec73a271a6954dc3bc2e57f59a6/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (50)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | arbitrum | n/a | `0x02c4f945eeaf6a82e1ca4ad199f9199a2965ab64` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x034be48ad9848ab6866c0740cbcbaf23d21848b1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x04ff5f2df3c5661af8bde40520ff1c3292fcab76` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0f5bdba1744b268a61b7f3dd21ad5f5d6b652a3c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x107761186086146625135506b837a54e461fb2b0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x11cc44a5c7e28d4438854f7704991f93fc3c89d8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x142b1a974850e31d9d5b335e3828f7ed9ab67d02` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x16993984bc49df3b6b78a3f1a8f45a5b67007e40` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x16b04418d2fcbb662c504c706300ec466f22efc6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1b343666690dbe5866144f434aa9b16e21b51177` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x21495b7e0ce361266101cad07c4877b6f2416b8e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x29cb0fd7637de23dbd9b50e382eafe99f51a26cb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2e43be367a0686505ff1ea632b26ab54040842b9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2f207b87d95a8cc72d6b0b3ec3d7c5ac1422a0ca` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3713298275816c15710f71e3c11b6dd27c0be572` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x43eb42a939e598581c945aeec03b4387dbdb3477` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x458f8bc9773bde08d9230d1db1cb002641cbeeb8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x45e6dcf7bb25f04b4f6c8576d9b6d91885b99935` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x46dae24398ad91b560d3eb9ea79a1f006b92148e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x484dfe8d76f83aa6438427416e826ed121a37ed5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4ca3b1a280cbd182fa6e6344c54b73c60885926b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4df9b2246bb592823fa60872e4f1a636f1be7473` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4f2385cc15c323331e8a953c6eab6de4c60c4ec1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x52ec6cfcb9f6e4cf660d7680691d6caa2945738b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5d281b17c70435a74bc9dc4049aa53d1a7dd1413` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5d39f442410704e763656155d844c141b4547c72` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5e7b4db2ba0737003551b0b103c154d2ba7635fe` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x62ab9b88c0020f8174f94cda933a0a06870935c9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x65e62aba248dbf74e5cf5139ed1f7117774d6597` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6af1c111aba20d1be2251a11053e7c9ebd7a0f1a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6d9bd6f0e71fde888d0b0641eee5a81389d8586f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6f344659ab44d6753b4bde37527973345ffc2846` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6f55a92826c28352db49c7b6f16d92a6337118bf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7b690126067eb4a8751d84d8400f1bf932e6e43b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x827d52d9a22692536e436ab4af4241771bf3c852` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x846e46ca5c1ed7607c75b7a2fc060ec30477817b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x89229bd31588b461a02de338ae28106b08e581c0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x914f92179aecb3d5c9527555058bdaea4a5d0883` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x92c2aa585d089b9258d25874e57b40f839c349b5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xaa11b9d48b295167c7e032195932811d3afb05a9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbe983eefe8b5ae6577d027db1bca815ee15f2e4f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbfb06be609d033558f853c51dad4f74549d965ee` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc4eb30f5b7a1fe84d980960d993e08733b40294f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcb3bbafcc163ada6d3ff824209d2af576e5a1275` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd233a6562c7528d2de2d0d531ce4794828198bcf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xde0f22738a7b04e778af25632f085e7ee894b8a5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xde52bfabfdd91deae0516478dc475eeff80df05a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe86fd99a431ca066c41ed77e1e2d07268cd4c1f3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf7d4db51c9e53eae7b4dbe56a2939226fa51c312` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfabadcdd9b27c88f075be73e8379aa687424b876` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [odex.vip](http://odex.vip/?sign=6100531bc2e5bf8b94dd7a7b87b53577) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0xe9d3e6811d1be8ba40a9273ebec6ff09fe2a6741`](./contracts/arbitrum-42161/0xe9d3e6811d1be8ba40a9273ebec6ff09fe2a6741/) | AlgebraPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3e0b30de227761d692260a01e04e364a622011f9`](./contracts/arbitrum-42161/0x3e0b30de227761d692260a01e04e364a622011f9/) | Burner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xff2073d3810754d6da4783235c8647e11e43c943`](./contracts/arbitrum-42161/0xff2073d3810754d6da4783235c8647e11e43c943/) | CErc20Compounded | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x20a6768f6aabf66b787985ec6ce0ebea6d7ad497`](./contracts/arbitrum-42161/0x20a6768f6aabf66b787985ec6ce0ebea6d7ad497/) | CErc20DelegateGmx | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0706905b2b21574defcf00b5fc48068995fcdcdf`](./contracts/arbitrum-42161/0x0706905b2b21574defcf00b5fc48068995fcdcdf/) | CEther | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0e9109c678ba6e807dd53ecf7a5a1e658681ad70`](./contracts/arbitrum-42161/0x0e9109c678ba6e807dd53ecf7a5a1e658681ad70/) | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1ffddc9578521602c9aadb5dbc220a553a6b4d2e`](./contracts/arbitrum-42161/0x1ffddc9578521602c9aadb5dbc220a553a6b4d2e/) | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4213135a86e01dfa62125b6ad17d96d302596e8e`](./contracts/arbitrum-42161/0x4213135a86e01dfa62125b6ad17d96d302596e8e/) | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4f2a26f1c4998a8c6ae9a1ee24d2b439abf749b5`](./contracts/arbitrum-42161/0x4f2a26f1c4998a8c6ae9a1ee24d2b439abf749b5/) | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5d57328423bed206e0ee41c32bbce4252e303d54`](./contracts/arbitrum-42161/0x5d57328423bed206e0ee41c32bbce4252e303d54/) | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4113805f8e2098cf4bc20321dbc210c0869159c9`](./contracts/arbitrum-42161/0x4113805f8e2098cf4bc20321dbc210c0869159c9/) | EsTND | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x068485a0f964b4c3d395059a19a05a8741c48b4e`](./contracts/arbitrum-42161/0x068485a0f964b4c3d395059a19a05a8741c48b4e/) | HandledImpl | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x57437f98ce4fd4d3cc1827b0095d93184827c46f`](./contracts/arbitrum-42161/0x57437f98ce4fd4d3cc1827b0095d93184827c46f/) | InstantVester | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xc2933eff32188e4655887cdc9c707a77e1229595`](./contracts/arbitrum-42161/0xc2933eff32188e4655887cdc9c707a77e1229595/) | JumpRateModelV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0d2ebf71afdfafe8e3fde3eaf9c502896f9e3718`](./contracts/arbitrum-42161/0x0d2ebf71afdfafe8e3fde3eaf9c502896f9e3718/) | MintableBaseToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0c261270ed2e036c9525243e5dd0e95f824d77d2`](./contracts/arbitrum-42161/0x0c261270ed2e036c9525243e5dd0e95f824d77d2/) | TenderPriceOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xc47d9753f3b32aa9548a7c3f30b6aec3b2d2798c`](./contracts/arbitrum-42161/0xc47d9753f3b32aa9548a7c3f30b6aec3b2d2798c/) | TND | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xc825a185036516087c5ea8d22da924520497b8bf`](./contracts/arbitrum-42161/0xc825a185036516087c5ea8d22da924520497b8bf/) | Unitroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xd16c3a58e083fec73a271a6954dc3bc2e57f59a6`](./contracts/arbitrum-42161/0xd16c3a58e083fec73a271a6954dc3bc2e57f59a6/) | WithdrawLever | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 19 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 50 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [3118] odex.vip

Fork inheritance lineage and inherited audits are included when available.
