# Agentic Audit Brief: Hemi

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 6 (0 matched; 6 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Hemi (`hemi`)
- Website: [https://hemi.xyz/](https://hemi.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: bsc, ethereum, optimism
- Contract surface: 63 unique implementations (109 raw deployments)
- Coverage basis: 0/11 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $519,962.55
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Hemi. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 17 contract row(s) across bsc, ethereum, optimism. Structural roles: 9 supporting, 8 core. 13 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 17
- Structural roles: supporting (9), core (8)
- Contract kinds: contract (17)
- Detected standards: erc1967proxy (12), erc20 (1), erc20permit (1), ownable (1)
- Frameworks: openzeppelin (5), openzeppelin-upgradeable (3), solmate (3)
- Upgradeable-pattern rows: 13

## Fork Analysis

0 of 15 contracts are derived from known codebases. 15 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x4200000000000000000000000000000000000014`, chain 10)
- UnnamedContract (`0x4200000000000000000000000000000000000017`, chain 10)
- UnnamedContract (`0x4200000000000000000000000000000000000019`, chain 10)
- UnnamedContract (`0x420000000000000000000000000000000000001a`, chain 10)
- GovernanceToken (`0x4200000000000000000000000000000000000042`, chain 10)
- Proxy (`0x4200000000000000000000000000000000000007`, chain 10)
- Proxy (`0x420000000000000000000000000000000000000f`, chain 10)
- Proxy (`0x4200000000000000000000000000000000000010`, chain 10)
- Proxy (`0x4200000000000000000000000000000000000011`, chain 10)
- Proxy (`0x4200000000000000000000000000000000000012`, chain 10)
- Proxy (`0x4200000000000000000000000000000000000015`, chain 10)
- Proxy (`0x4200000000000000000000000000000000000016`, chain 10)
- Proxy (`0x4200000000000000000000000000000000000018`, chain 10)
- Proxy (`0x4200000000000000000000000000000000000020`, chain 10)
- Proxy (`0x4200000000000000000000000000000000000021`, chain 10)

## Contract Surface Quality

- Logic-topography rows: 17; live-surface rows included: 17 (11 live, 6 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 15/46 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/11 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 15 own, 20 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 28 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 13
- Confirmed-live implementations: 15 of 63 unique; 48 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/24
- Verified + Unaudited implementations: 24
- Verified by bytecode match: 0
- Unverified implementations: 39
- Unique implementations: 63
- Raw deployments: 109
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Audit staleness (calendar age): 3 fresh, 2 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (24)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BinanceHemiOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x5ffd0eadc186af9512542d0d5e5eafc65d5afc5b`; bsc `0xb8dbff1e8dfa6a8cb2b6702f685e3fb73ba2c3c3`; bsc `0xd275f99dba63259466ef83abf1a9c2effc42506e`; bsc `0xfc553809c82ab0853e5d9e7dd168dd4454e91575` | ⚠️ Unaudited |
| EAS | unknown | project_anchor | own_supporting | 1 | optimism | unit-241871 | `0x4200000000000000000000000000000000000021` | ⚠️ Unaudited |
| GasPriceOracle | operational_periphery | project_anchor | own_supporting | 1 | optimism | unit-241864 | `0x420000000000000000000000000000000000000f` | ⚠️ Unaudited |
| GnosisSafeProxyFactory | registry | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241842 | `0xa6b71e26c5e0845f74c812102ca7114b6a896ab2` | ⚠️ Unaudited |
| GnosisSafeProxyFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa6b71e26c5e0845f74c812102ca7114b6a896ab2` | ⚠️ Unaudited |
| GovernanceToken | token | project_anchor | own_supporting | 0 | optimism | unit-241858 | `0x4200000000000000000000000000000000000042` | ⚠️ Unaudited |
| Hemi | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb964a1a6fab73b8c72a0d15c7337fa4804f484d` | ⚠️ Unaudited |
| HemiLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x0795a3c4898d823946f953bd1234c0e7b7ff1026`; bsc `0x7070fa313d1514ada227f38a8afcc8e37cfb89f9`; bsc `0x86bb2b7ec923dc0f30a784de00f0737ec094046b`; bsc `0xfbe1baa283c3cdf96052e56eb979e3b01b6eae8b` | ⚠️ Unaudited |
| L1Block | unknown | project_anchor | own_supporting | 1 | optimism | unit-241865 | `0x4200000000000000000000000000000000000015` | ⚠️ Unaudited |
| L1StandardBridge | bridge_template | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-241861 | `0x5eaa10f99e7e6d177ef9f74e519e319aa49f191e` | ⚠️ Unaudited |
| L2CrossDomainMessenger | unknown | project_anchor | own_supporting | 1 | optimism | unit-241862 | `0x4200000000000000000000000000000000000007` | ⚠️ Unaudited |
| L2OutputOracle | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-241859 | `0x6daf3a3497d8abdfe12915add9829f83a79c0d51` | ⚠️ Unaudited |
| L2StandardBridge | operational_periphery | project_anchor | own_supporting | 1 | optimism | unit-241868 | `0x4200000000000000000000000000000000000010` | ⚠️ Unaudited |
| L2ToL1MessagePasser | unknown | project_anchor | own_supporting | 1 | optimism | unit-241863 | `0x4200000000000000000000000000000000000016` | ⚠️ Unaudited |
| MIPS | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241832 | `0x42ff661af011939f699d67bd021d237ebcba9c2a` | ⚠️ Unaudited |
| MockDstOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 35 deployments: bsc `0x04db2da16318e616d28f0da7aa59eeb12acec72c`; bsc `0x14c9bc56eff931ae8625899f1b747d4431298fba`; bsc `0x182c58c10fa565d9d9a3b929294b8803f38463a1`; bsc `0x25c304f15513e9c8054c84ed6a9927e8e677d608`; bsc `0x2dd5869c3d7d251e1e9a452bd7aa2e11c61142a8`; bsc `0x3a82a401a5834a32aa5f6268982805bbb69cd2f4`; bsc `0x3ea24e3727a85a479e29e02cc70e792936fbbcad`; bsc `0x4661407fc224e5432d7f528a20ef8906e453a8f3`; bsc `0x4f2acd70a590736bb6185a7aab503971e61bd83e`; bsc `0x4ff907f877e92ef39cdfba6d0db73e9e2ac0f538`; bsc `0x51bc603a29bef7181e9866ed27beaae215865761`; bsc `0x656f1f3a4df83a10afb2bd2ecad8ef4a96c9e4d0`; bsc `0x6e3ac56a1df60ada3b5563c3a609222045245365`; bsc `0x760c6622e94868f4e6df8e8d25c9c0c8dc4ba3b7`; bsc `0x790e5f103ab69122fc5d9a3d5216fad11fe36acb`; bsc `0x8e4f0e00904d03b2fa805c2b07c436e7a76110bf`; bsc `0x8f156189a3cd28dfc8fb7bbbace58f98f09c0bb3`; bsc `0x951f5d2593e0a678c1192fab4fa3dbbf867d2c1d`; bsc `0x9bfc2143b2729ede4a53b96379b36d6018722406`; bsc `0xa3ceec1740090b303a9682cd43f1f14d7bac4da2`; bsc `0xb908cadb1906b44c3d163486d8ceb9b4370c476e`; bsc `0xbd5caae9f1b73dce4e14790cfdf32de0d0128a66`; bsc `0xbf504a1eb823a0a2964cb043068472f479fb3735`; bsc `0xbf7d0f62b64b23053949b3a88a03da5bfd35b2e2`; bsc `0xc340d0a130663fa901a1bdb7a3ddb911de090657`; bsc `0xc9ffa23308d02dc9cffe955fcce5ffd117a03b46`; bsc `0xd86a00de186222a6720e0838b28ccf46c6df086b`; bsc `0xdb2d0baae78f1dc2a8504b471f3cea257b2c3766`; bsc `0xdbd9cfb0b54c08e75085f8c8844e8054d13bd39a`; bsc `0xe002c5c9ad8f533c17c25df21c453f31849e0ed9`; bsc `0xe2a466df120fb847520763461d99c22ea5ba8cc8`; bsc `0xe2adb496684eb9c43b5025f05b50ee492c77f938`; bsc `0xf228733daa7897dd728b11609b4382b9d69b7e0f`; bsc `0xf3b36c39dd2a5e0407fb3aee0dd444a88d5893e0`; bsc `0xffd74ecf5b4eec6eac2624764933fb5f2e2dfd09` | ⚠️ Unaudited |
| MockLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x32a21ec8ee93971d4b4093c0895fd841c7169a23`; bsc `0xded54ce0e6724ffc3992939771e54a6dbcaad82e` | ⚠️ Unaudited |
| OFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 6 deployments: bsc `0x10061d0593441ff74536158592e1be3f4c7b180c`; bsc `0x37d8c0afeef48aa9d925475cf6c73e4d8c74d931`; bsc `0x64b5bb3b7ef0267019fee5b826c60cb9b7609373`; bsc `0x707c243b59fedf29730cd3d1025fbeeea0412075`; bsc `0xa30e1a67026b9cb4dec0ea2338cc5cd34d076f30`; bsc `0xc141b66ee4262ba46ea29578955c274fd4a96515` | ⚠️ Unaudited |
| OptimismMintableERC20Factory | registry | project_anchor | own_supporting | 1 | optimism | unit-241869 | `0x4200000000000000000000000000000000000012` | ⚠️ Unaudited |
| OptimismPortal | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-241860 | `0x39a0005415256b9863afe2d55edcf75ecc3a4d7e` | ⚠️ Unaudited |
| PreimageOracle | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241836 | `0x613f36be58ba712b37474f4b82484d680d24ed20` | ⚠️ Unaudited |
| ProxyAdmin | governance | project_anchor | own_supporting | 1 | optimism | unit-241867 | `0x4200000000000000000000000000000000000018` | ⚠️ Unaudited |
| SchemaRegistry | registry | project_anchor | own_supporting | 1 | optimism | unit-241866 | `0x4200000000000000000000000000000000000020` | ⚠️ Unaudited |
| SequencerFeeVault | core_logic | project_anchor | own_supporting | 1 | optimism | unit-241870 | `0x4200000000000000000000000000000000000011` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (39)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241826 | `0x0262fedc4a98f94ddb90cef0e058644d8409342c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241828 | `0x04dcfe50e43823a1d8f6e3fbb8af10bfb7ebb634` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241829 | `0x13cb1b6e69ec8ff6a5c8823d1e8dc78cccf3ce48` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241830 | `0x15144fb8621cb3c4ed3db223c173ffb58c8d2ab8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000006` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000007` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000010` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000011` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000012` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000014` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000015` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000016` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000017` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241834 | `0x5442d0ddb33b396879d2d016a9ad09ad122562c3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241835 | `0x5ae68684d9179a8053883f1df599ea7fb35303c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7007dd1c09527b92aecd8ae6570b73d09e0b8f12` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241837 | `0x8434dc705e4b729405dd66c94dfc62bc3825ea69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9865bbb4455e6f929fdcbab5505d201b5d493754` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241839 | `0xa446331bd28cbe0186a983a27c528f566b6bede0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241841 | `0xa5f37791378c55941a52b4dcb70be4d8d09f5e43` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241846 | `0xbe81a9d662422f667f634f3fc301e2e360fefb30` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241848 | `0xc5627348dbc9179cfb5a24c8199635770ea575a3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241850 | `0xd9db270c1b5e3bd161e8c8503c55ceabee709552` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec9fa5dac1118963933e1a675a4eea0009b7f215` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241851 | `0xf005dfb08377fad44588af68d0884d272a6fb050` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241852 | `0xf44007eaf2fafdd8ba8d3551f23cd2b879f54677` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-241854 | `0x4200000000000000000000000000000000000014` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-241855 | `0x4200000000000000000000000000000000000017` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-241856 | `0x4200000000000000000000000000000000000019` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-241857 | `0x420000000000000000000000000000000000001a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4482b6510df4c723bdf80c4441dbdbc855ab29ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5a7749f83b81b301cab5f48eb8516b986daef23d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x69d67c1caa8d0717dffa6d2e5b1f7f19926e5ef0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0c3497c91291f6a8db73efa7565a83f89ccb67d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5687ba62088aa4cd6a8df1930798fe510fd1ee0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x963b5bc11950ab4852e9c60992ec21827ebd0a34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd744320abd3bd4445dc3c90c889391bd454d5b30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe38d19b2950a386f44052ddc07fcb4a6d6b3ca10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe55744ebb196d0e4ddea70204142eaf517ef005a` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 47
- Live contracts: 0
- Unknown liveness contracts: 47
- Source-verified contracts: 37
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate review=35, source verified unclassified=2, unverified unclassified=10

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| bsc | candidate review | MockDstOFT<br>`0x04db2da16318e616d28f0da7aa59eeb12acec72c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| bsc | candidate review | MockDstOFT<br>`0x14c9bc56eff931ae8625899f1b747d4431298fba` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| bsc | candidate review | MockDstOFT<br>`0x182c58c10fa565d9d9a3b929294b8803f38463a1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| bsc | candidate review | MockDstOFT<br>`0x25c304f15513e9c8054c84ed6a9927e8e677d608` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| bsc | candidate review | MockDstOFT<br>`0x2dd5869c3d7d251e1e9a452bd7aa2e11c61142a8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| bsc | candidate review | MockDstOFT<br>`0x3a82a401a5834a32aa5f6268982805bbb69cd2f4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| bsc | candidate review | MockDstOFT<br>`0x3ea24e3727a85a479e29e02cc70e792936fbbcad` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| bsc | candidate review | MockDstOFT<br>`0x4661407fc224e5432d7f528a20ef8906e453a8f3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| bsc | candidate review | MockDstOFT<br>`0x4f2acd70a590736bb6185a7aab503971e61bd83e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| bsc | candidate review | MockDstOFT<br>`0x4ff907f877e92ef39cdfba6d0db73e9e2ac0f538` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| bsc | candidate review | MockDstOFT<br>`0x51bc603a29bef7181e9866ed27beaae215865761` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| bsc | candidate review | MockDstOFT<br>`0x656f1f3a4df83a10afb2bd2ecad8ef4a96c9e4d0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| bsc | candidate review | MockDstOFT<br>`0x6e3ac56a1df60ada3b5563c3a609222045245365` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| bsc | candidate review | MockDstOFT<br>`0x760c6622e94868f4e6df8e8d25c9c0c8dc4ba3b7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| bsc | candidate review | MockDstOFT<br>`0x790e5f103ab69122fc5d9a3d5216fad11fe36acb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| bsc | candidate review | MockDstOFT<br>`0x8e4f0e00904d03b2fa805c2b07c436e7a76110bf` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| bsc | candidate review | MockDstOFT<br>`0x8f156189a3cd28dfc8fb7bbbace58f98f09c0bb3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| bsc | candidate review | MockDstOFT<br>`0x951f5d2593e0a678c1192fab4fa3dbbf867d2c1d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| bsc | candidate review | MockDstOFT<br>`0x9bfc2143b2729ede4a53b96379b36d6018722406` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| bsc | candidate review | MockDstOFT<br>`0xa3ceec1740090b303a9682cd43f1f14d7bac4da2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| bsc | candidate review | MockDstOFT<br>`0xb908cadb1906b44c3d163486d8ceb9b4370c476e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| bsc | candidate review | MockDstOFT<br>`0xbd5caae9f1b73dce4e14790cfdf32de0d0128a66` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| bsc | candidate review | MockDstOFT<br>`0xbf504a1eb823a0a2964cb043068472f479fb3735` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| bsc | candidate review | MockDstOFT<br>`0xbf7d0f62b64b23053949b3a88a03da5bfd35b2e2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| bsc | candidate review | MockDstOFT<br>`0xc340d0a130663fa901a1bdb7a3ddb911de090657` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| bsc | candidate review | MockDstOFT<br>`0xc9ffa23308d02dc9cffe955fcce5ffd117a03b46` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| bsc | candidate review | MockDstOFT<br>`0xd86a00de186222a6720e0838b28ccf46c6df086b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| bsc | candidate review | MockDstOFT<br>`0xdb2d0baae78f1dc2a8504b471f3cea257b2c3766` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| bsc | candidate review | MockDstOFT<br>`0xdbd9cfb0b54c08e75085f8c8844e8054d13bd39a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| bsc | candidate review | MockDstOFT<br>`0xe002c5c9ad8f533c17c25df21c453f31849e0ed9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| bsc | candidate review | MockDstOFT<br>`0xe2a466df120fb847520763461d99c22ea5ba8cc8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| bsc | candidate review | MockDstOFT<br>`0xe2adb496684eb9c43b5025f05b50ee492c77f938` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| bsc | candidate review | MockDstOFT<br>`0xf228733daa7897dd728b11609b4382b9d69b7e0f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| bsc | candidate review | MockDstOFT<br>`0xf3b36c39dd2a5e0407fb3aee0dd444a88d5893e0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| bsc | candidate review | MockDstOFT<br>`0xffd74ecf5b4eec6eac2624764933fb5f2e2dfd09` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| bsc | source verified unclassified | MockLock<br>`0x32a21ec8ee93971d4b4093c0895fd841c7169a23` | non_address_book | unknown | unknown | verified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| bsc | source verified unclassified | MockLock<br>`0xded54ce0e6724ffc3992939771e54a6dbcaad82e` | non_address_book | unknown | unknown | verified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0c3497c91291f6a8db73efa7565a83f89ccb67d6` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5687ba62088aa4cd6a8df1930798fe510fd1ee0b` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| bsc | unverified unclassified | UnnamedContract<br>`0x963b5bc11950ab4852e9c60992ec21827ebd0a34` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd744320abd3bd4445dc3c90c889391bd454d5b30` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe38d19b2950a386f44052ddc07fcb4a6d6b3ca10` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe55744ebb196d0e4ddea70204142eaf517ef005a` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9865bbb4455e6f929fdcbab5505d201b5d493754` | non_address_book | unknown | unknown | unverified | n/a | `0xafc97fafc07098ebad00c2fcfcaf849380e47538` |
| optimism | unverified unclassified | UnnamedContract<br>`0x4482b6510df4c723bdf80c4441dbdbc855ab29ac` | non_address_book | unknown | unknown | unverified | n/a | `0x53a6eecc2dd4795fcc68940ddc6b4d53bd88bd9e` |
| optimism | unverified unclassified | UnnamedContract<br>`0x5a7749f83b81b301cab5f48eb8516b986daef23d` | non_address_book | unknown | unknown | unverified | n/a | `0x53a6eecc2dd4795fcc68940ddc6b4d53bd88bd9e` |
| optimism | unverified unclassified | UnnamedContract<br>`0x69d67c1caa8d0717dffa6d2e5b1f7f19926e5ef0` | non_address_book | unknown | unknown | unverified | n/a | `0x53a6eecc2dd4795fcc68940ddc6b4d53bd88bd9e` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Audit_Report_HEMI-PRO_FINAL_22.pdf](https://github.com/hemilabs/audit-reports/blob/master/Bitcoin_Tunnel/Audit_Report_HEMI-PRO_FINAL_22.pdf) | HEMI-PRO | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [Quantstamp - BTC Tunnel - FinalReport (1).pdf](https://github.com/hemilabs/audit-reports/blob/master/Bitcoin_Tunnel/Quantstamp%20-%20BTC%20Tunnel%20-%20FinalReport%20(1).pdf) | Quantstamp | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [Audit_Report_HEMI-TOK_FINAL_21.pdf](https://github.com/hemilabs/audit-reports/blob/master/Hemi_Token/Audit_Report_HEMI-TOK_FINAL_21.pdf) | unknown | Audit | 2025-10 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 1 | n/a |
| [HemiToken - Final Report.pdf](https://github.com/hemilabs/audit-reports/blob/master/Hemi_Token/HemiToken%20-%20Final%20Report.pdf) | unknown | Audit | 2025-04 | aging | Direct | n/a | no match | 0 | 0 | 0 | 1 | n/a |
| [Audit_Report_HEMI-VOT_FINAL_21.pdf](https://github.com/hemilabs/audit-reports/blob/master/veHEMI/Audit_Report_HEMI-VOT_FINAL_21.pdf) | unknown | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [audit-reports (GitHub directory)](https://github.com/hemilabs/audit-reports) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3137] Audit_Report_HEMI-PRO_FINAL_22.pdf — no match: Extracted contracts from scope section and findings. Audit date from document control: v2.2 published Oct 9, 2025.
- [3138] Quantstamp - BTC Tunnel - FinalReport (1).pdf — no match: Scope section explicitly lists all files under 'Files Included'. Audit date from changelog: '2025-01-21 - Final report'.
- [3139] Audit_Report_HEMI-TOK_FINAL_21.pdf — no match: No reason recorded
- [3140] HemiToken - Final Report.pdf — no match: No reason recorded
- [3141] Audit_Report_HEMI-VOT_FINAL_21.pdf — no match: Scope section lists repository hemilabs/veHEMI with commit hash; contracts VeHemi and VeHemiVoteDelegation are explicitly mentioned in System Overview and findings.
- [14613] audit-reports (GitHub directory) — no match: The provided text is a GitHub repository README page listing audit report folders (Bitcoin_Tunnel, Hemi_Token, veHEMI) but does not contain the actual audit report content with contract names or scope details.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Audit_Report_HEMI-PRO_FINAL_22.pdf | SimpleBitcoinVault | unmatched — not counted | — | listed in scope and findings | no |
| Audit_Report_HEMI-PRO_FINAL_22.pdf | SimpleBitcoinVaultFactory | unmatched — not counted | — | mentioned in finding RES-HEMI-PRO03 | no |
| Audit_Report_HEMI-PRO_FINAL_22.pdf | SimpleBitcoinVaultUTXOLogicHelper | unmatched — not counted | — | mentioned in finding RES-HEMI-PRO04 | no |
| Audit_Report_HEMI-PRO_FINAL_22.pdf | BTCToken | unmatched — not counted | — | mentioned in finding RES-HEMI-PRO05 | no |
| Audit_Report_HEMI-PRO_FINAL_22.pdf | GlobalConfig | unmatched — not counted | — | mentioned in findings RES-HEMI-PRO06 and RES-HEMI-PRO07 | no |
| Audit_Report_HEMI-PRO_FINAL_22.pdf | BitcoinTunnelManager | unmatched — not counted | — | mentioned in finding RES-HEMI-PRO08 | no |
| Audit_Report_HEMI-PRO_FINAL_22.pdf | IVaultFactory | unmatched — not counted | — | mentioned in finding RES-HEMI-PRO03 | no |
| Quantstamp - BTC Tunnel - FinalReport (1).pdf | AddressWhitelist | unmatched — not counted | — | listed in scope | no |
| Quantstamp - BTC Tunnel - FinalReport (1).pdf | GlobalConfig | unmatched — not counted | — | listed in scope | no |
| Quantstamp - BTC Tunnel - FinalReport (1).pdf | SimpleBitcoinVault | unmatched — not counted | — | listed in scope | no |
| Quantstamp - BTC Tunnel - FinalReport (1).pdf | SimpleBitcoinVaultFactory | unmatched — not counted | — | listed in scope | no |
| Quantstamp - BTC Tunnel - FinalReport (1).pdf | SimpleBitcoinVaultFactoryHelper | unmatched — not counted | — | listed in scope | no |
| Quantstamp - BTC Tunnel - FinalReport (1).pdf | SimpleBitcoinVaultState | unmatched — not counted | — | listed in scope | no |
| Quantstamp - BTC Tunnel - FinalReport (1).pdf | SimpleBitcoinVaultStateFactory | unmatched — not counted | — | listed in scope | no |
| Quantstamp - BTC Tunnel - FinalReport (1).pdf | SimpleBitcoinVaultStructs | unmatched — not counted | — | listed in scope | no |
| Quantstamp - BTC Tunnel - FinalReport (1).pdf | SimpleBitcoinVaultUTXOLogicHelper | unmatched — not counted | — | listed in scope | no |
| Quantstamp - BTC Tunnel - FinalReport (1).pdf | SimpleGlobalVaultConfig | unmatched — not counted | — | listed in scope | no |
| Quantstamp - BTC Tunnel - FinalReport (1).pdf | CommonStructs | unmatched — not counted | — | listed in scope | no |
| Quantstamp - BTC Tunnel - FinalReport (1).pdf | BitcoinTunnelManager | unmatched — not counted | — | listed in scope | no |
| Quantstamp - BTC Tunnel - FinalReport (1).pdf | BTCToken | unmatched — not counted | — | listed in scope | no |
| Audit_Report_HEMI-TOK_FINAL_21.pdf | Hemi | unmatched — not counted | — | — | no |
| HemiToken - Final Report.pdf | Hemi | unmatched — not counted | — | — | no |
| Audit_Report_HEMI-VOT_FINAL_21.pdf | VeHemi | unmatched — not counted | — | System Overview mentions VeHemi.sol contract; findings reference src/VeHemi.sol | no |
| Audit_Report_HEMI-VOT_FINAL_21.pdf | VeHemiVoteDelegation | unmatched — not counted | — | System Overview mentions VeHemiVoteDelegation contract; findings reference src/VeHemiVoteDelegation.sol | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| optimism | `0x4200000000000000000000000000000000000021` | EAS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x420000000000000000000000000000000000000f` | GasPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x4200000000000000000000000000000000000042` | GovernanceToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x4200000000000000000000000000000000000015` | L1Block | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x4200000000000000000000000000000000000007` | L2CrossDomainMessenger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x4200000000000000000000000000000000000010` | L2StandardBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x4200000000000000000000000000000000000016` | L2ToL1MessagePasser | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x4200000000000000000000000000000000000012` | OptimismMintableERC20Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x4200000000000000000000000000000000000020` | SchemaRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x4200000000000000000000000000000000000011` | SequencerFeeVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 23 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 39 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 24 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, low=1
- Match method counts: n/a

Zero-match audit list:

- [3137] Audit_Report_HEMI-PRO_FINAL_22.pdf
- [3138] Quantstamp - BTC Tunnel - FinalReport (1).pdf
- [3139] Audit_Report_HEMI-TOK_FINAL_21.pdf
- [3140] HemiToken - Final Report.pdf
- [3141] Audit_Report_HEMI-VOT_FINAL_21.pdf
- [14613] audit-reports (GitHub directory)

Fork inheritance lineage and inherited audits are included when available.
