# Agentic Audit Brief: Ledgity Yield

## Project Overview

- Project: Ledgity Yield (`ledgity-yield`)
- Website: [https://ledgity.finance/](https://ledgity.finance/)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-17T07:00:50.159Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, base, ethereum, linea, sonic
- Contract surface: 61 unique implementations (105 raw deployments)
- DeFi Llama TVL: $2,885,057.49
- On-chain TVL (included contracts): $8,173.58
- TVL by chain: Linea $8,173.58

## Project Description

Ledgity Yield is a multi-chain real-world-yield stablecoin protocol offering USDC/EURC vaults backed by institutional fixed-income and real-world asset strategies.

### Architecture

LTokens rely on Yield Vaults for yield generation and on Staking contracts for reward distribution. All families share a common governance and access control layer (GlobalAccessList, GlobalBlacklist, GlobalPause, GlobalOwner) that enforces security and administrative policies across chains.

## Contract Surface Quality

- Indexed contracts: 352; live-surface contracts included: 105 (46 live, 59 unknown).
- Excluded by liveness: 50 inactive, 197 singleton, 0 uninitialized.
- Deployment units: 2/99 live.
- Detected codebases: none
- Unverified dependencies: 1/2.

## Audit Coverage Summary

- Verified implementations audited: 0/30 (0.0%)
- Verified + Unaudited implementations: 30
- Verified by bytecode match: 0
- Unverified implementations: 31
- Unique implementations: 61
- Raw deployments: 105
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $8,173.58
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (30)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LToken | token | linea | unit-30729 | [`0x4af215...b45b7a`](./contracts/linea-59144/0x4af215dbe27fc030f37f73109b85f421fab45b7a/) | ⚠️ Unaudited |
| Address | unknown | base | n/a | [`0xf55dde...4bc429`](./contracts/base-8453/0xf55dde6c343cb893041fdcba386dbadffa4bc429/) | ⚠️ Unaudited |
| APRHistory | unknown | arbitrum | n/a | 2 deployments: base `0xe34603...737cbf`; arbitrum [`0x3f0ff9...ad4ac5`](./contracts/arbitrum-42161/0x3f0ff9947550d7cf26549136552c785446ad4ac5/) | ⚠️ Unaudited |
| BalanceLogicLibrary | unknown | base | n/a | 5 deployments: ethereum `0xcc1bef...e4f6f0`; sonic `0xad4a00...b41028`; base [`0x70dee2...5b994f`](./contracts/base-8453/0x70dee24e016cc09d423490d3040759a71a5b994f/); arbitrum `0x7b25b4...23060b`; linea `0xe34603...737cbf` | ⚠️ Unaudited |
| BatchTokenSender | token | arbitrum | n/a | [`0x8aed5d...bd293e`](./contracts/arbitrum-42161/0x8aed5d3c5844d26671ae63be08ad2a6903bd293e/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | sonic | n/a | 5 deployments: sonic [`0x13e62b...56e955`](./contracts/sonic-146/0x13e62b8113590c46b273abe35bd86d4c7856e955/); sonic `0x536e1c...6d9462`; sonic `0x613904...888b21`; sonic `0x68f3c6...6c2a63`; sonic `0xbea9da...18b05d` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | base | unit-30700 | [`0x60a3e3...1adb42`](./contracts/base-8453/0x60a3e35cc302bfa44cb288bc5a4f316fdb1adb42/) | ⚠️ Unaudited |
| GlobalAccessList | unknown | sonic | n/a | 3 deployments: ethereum `0x12d5c7...205c00`; ethereum `0xf6cfb0...00d077`; sonic [`0x071c9d...4caf29`](./contracts/sonic-146/0x071c9d3ee88c1d22f931e87bc70da086de4caf29/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | base | unit-30706 (2 proxies) | 2 deployments: base [`0x972c17...809053`](./contracts/base-8453/0x972c17d0ada071db4a0395505dd3ad0a80809053/); base `0xf25a51...f491c3` | ⚠️ Unaudited |
| LDY | unknown | base | n/a | 3 deployments: ethereum `0x482df7...ddfdbc`; base [`0x055d20...dd8a13`](./contracts/base-8453/0x055d20a70efd45ab839ae1a39603d0cfdbdd8a13/); arbitrum `0x999faf...0d07e1` | ⚠️ Unaudited |
| LDYStaking | unknown | arbitrum | n/a | 5 deployments: base `0x8db842...bd3165`; arbitrum [`0x06f54b...660ab4`](./contracts/arbitrum-42161/0x06f54b7f27eec56616b951598baa3b84d7660ab4/); arbitrum `0x0dff38...1ead61`; arbitrum `0x4e80be...be2d02`; arbitrum `0x67efae...dc3e47` | ⚠️ Unaudited |
| LedgityDataProvider | unknown | linea | n/a | 6 deployments: ethereum `0xe34603...737cbf`; sonic `0xac5da8...72ea0d`; base `0xab4655...aac126`; base `0xda106c...818a39`; arbitrum `0x6cdb48...c3b2ca`; linea [`0x12d5c7...205c00`](./contracts/linea-59144/0x12d5c708ae229cae0f6c712cb8feb1c914205c00/) | ⚠️ Unaudited |
| LedgityYieldVault | core_logic | arbitrum | n/a | 6 deployments: ethereum `0x8db842...bd3165`; ethereum `0x94ed3c...b03ed1`; base `0x9bb3be...c74361`; base `0xf9eece...a9b56f`; arbitrum [`0x0a1ba9...0df98a`](./contracts/arbitrum-42161/0x0a1ba9ff031dce2f0c228b572154fb367e0df98a/); linea `0x57791d...b3b925` | ⚠️ Unaudited |
| LedgityYieldVaultSonic | core_logic | sonic | n/a | [`0x22c32d...9ba165`](./contracts/sonic-146/0x22c32d67257d55c32d83c743e31da208d39ba165/) | ⚠️ Unaudited |
| LongTailIRM | unknown | sonic | n/a | [`0x12f407...10305a`](./contracts/sonic-146/0x12f407bfdbbe56ab19ecd389992f0f408810305a/) | ⚠️ Unaudited |
| LToken | token | arbitrum | n/a | 6 deployments: base `0x10ce08...2be5d4`; arbitrum [`0x0e7785...b7e9aa`](./contracts/arbitrum-42161/0x0e77850ac71e72f9c995a2f15b7cf1b528b7e9aa/); arbitrum `0x41b0ee...cc70f0`; arbitrum `0x8584bc...d6aee3`; arbitrum `0xa3b0db...84a21f`; arbitrum `0xb5c691...f9e2de` | ⚠️ Unaudited |
| MajorIRM | unknown | sonic | n/a | [`0x18fad5...5505fa`](./contracts/sonic-146/0x18fad5b72113497e1c92570b6f517328d05505fa/) | ⚠️ Unaudited |
| MasterMinter | unknown | base | n/a | [`0x114b64...68726e`](./contracts/base-8453/0x114b64a8bf7bf0ab2a8a64a3e348307bd568726e/) | ⚠️ Unaudited |
| OracleRouterChainlink | operational_periphery | sonic | unit-30687 | [`0xfb0497...5a32e8`](./contracts/sonic-146/0xfb04979bda6546f114afcff2a78d35446d5a32e8/) | ⚠️ Unaudited |
| PreMining | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x9d7aed...5aa06c`](./contracts/arbitrum-42161/0x9d7aedefe90b880c5a9bed4fcbd3fad0ea5aa06c/); linea `0xd54d56...b77813` | ⚠️ Unaudited |
| RfqEngine | unknown | sonic | n/a | [`0x201169...13e95b`](./contracts/sonic-146/0x20116919299625b1b3e474d5a594a5b4ed13e95b/) | ⚠️ Unaudited |
| SafeProxy | unknown | base | n/a | [`0xe7616e...42acac`](./contracts/base-8453/0xe7616e98d2506e571e8f6e38e7bfd0b55642acac/) | ⚠️ Unaudited |
| StableIRM | unknown | sonic | n/a | [`0x4bd77b...edefd5`](./contracts/sonic-146/0x4bd77b487e2a8884b4e5528ff32b3917f7edefd5/) | ⚠️ Unaudited |
| StakingPositions | unknown | ethereum | n/a | 4 deployments: ethereum [`0x4eec09...2fe877`](./contracts/ethereum-1/0x4eec09db589c882fba7c5d03065dfd20912fe877/); ethereum `0xeb163b...c6d108`; base `0x54b36d...ef79ea`; arbitrum `0xea7c3f...73982d` | ⚠️ Unaudited |
| StakingPositionsSonic | unknown | sonic | n/a | 2 deployments: sonic [`0x655c94...767cc8`](./contracts/sonic-146/0x655c94df33d39a126f9260f4b795b51336767cc8/); sonic `0xd1ec72...c5c306` | ⚠️ Unaudited |
| StakingRewardsDistributor | operational_periphery | arbitrum | n/a | 3 deployments: ethereum `0x37eef1...a6c2bd`; base `0x6ebbff...fd37c2`; arbitrum [`0x2ed903...40fd7e`](./contracts/arbitrum-42161/0x2ed9031c6aaac0c42972e133776d133fcc40fd7e/) | ⚠️ Unaudited |
| StakingRewardsDistributorSonic | operational_periphery | sonic | n/a | 2 deployments: sonic [`0x3bcb3c...b40e4c`](./contracts/sonic-146/0x3bcb3c2992a1a4c2c97010c6d6789f6abcb40e4c/); sonic `0xb91985...68640e` | ⚠️ Unaudited |
| Storage | unknown | sonic | n/a | [`0x4fec0c...135d73`](./contracts/sonic-146/0x4fec0c1c745c2d8ebb4fffa0d4e8d1395a135d73/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | sonic | n/a | 4 deployments: sonic [`0x89c312...11df5e`](./contracts/sonic-146/0x89c31261221961acbae55917256d59257511df5e/); sonic `0xc1883f...992748`; sonic `0xd89992...4de721`; sonic `0xfb7040...a993f8` | ⚠️ Unaudited |
| TSTTOKEN | token | arbitrum | n/a | [`0xc1f003...853009`](./contracts/arbitrum-42161/0xc1f003474705e229ed8ad5c9aee017bbda853009/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (31)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x588eb8...287068` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x3665a6...462a21` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x7779f5...313a11` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x9522ba...d887c8` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xaecac5...3ca4b4` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc57afd...56e6ce` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xe8500a...17cd00` | ❓ Unverified |
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

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x3f0ff9...ad4ac5`](./contracts/arbitrum-42161/0x3f0ff9947550d7cf26549136552c785446ad4ac5/) | APRHistory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x70dee2...5b994f`](./contracts/base-8453/0x70dee24e016cc09d423490d3040759a71a5b994f/) | BalanceLogicLibrary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8aed5d...bd293e`](./contracts/arbitrum-42161/0x8aed5d3c5844d26671ae63be08ad2a6903bd293e/) | BatchTokenSender | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x60a3e3...1adb42`](./contracts/base-8453/0x60a3e35cc302bfa44cb288bc5a4f316fdb1adb42/) | FiatTokenV2_2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x071c9d...4caf29`](./contracts/sonic-146/0x071c9d3ee88c1d22f931e87bc70da086de4caf29/) | GlobalAccessList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x055d20...dd8a13`](./contracts/base-8453/0x055d20a70efd45ab839ae1a39603d0cfdbdd8a13/) | LDY | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x06f54b...660ab4`](./contracts/arbitrum-42161/0x06f54b7f27eec56616b951598baa3b84d7660ab4/) | LDYStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x12d5c7...205c00`](./contracts/linea-59144/0x12d5c708ae229cae0f6c712cb8feb1c914205c00/) | LedgityDataProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0a1ba9...0df98a`](./contracts/arbitrum-42161/0x0a1ba9ff031dce2f0c228b572154fb367e0df98a/) | LedgityYieldVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x22c32d...9ba165`](./contracts/sonic-146/0x22c32d67257d55c32d83c743e31da208d39ba165/) | LedgityYieldVaultSonic | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x12f407...10305a`](./contracts/sonic-146/0x12f407bfdbbe56ab19ecd389992f0f408810305a/) | LongTailIRM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0e7785...b7e9aa`](./contracts/arbitrum-42161/0x0e77850ac71e72f9c995a2f15b7cf1b528b7e9aa/) | LToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x18fad5...5505fa`](./contracts/sonic-146/0x18fad5b72113497e1c92570b6f517328d05505fa/) | MajorIRM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x114b64...68726e`](./contracts/base-8453/0x114b64a8bf7bf0ab2a8a64a3e348307bd568726e/) | MasterMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x9d7aed...5aa06c`](./contracts/arbitrum-42161/0x9d7aedefe90b880c5a9bed4fcbd3fad0ea5aa06c/) | PreMining | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x201169...13e95b`](./contracts/sonic-146/0x20116919299625b1b3e474d5a594a5b4ed13e95b/) | RfqEngine | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x4bd77b...edefd5`](./contracts/sonic-146/0x4bd77b487e2a8884b4e5528ff32b3917f7edefd5/) | StableIRM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4eec09...2fe877`](./contracts/ethereum-1/0x4eec09db589c882fba7c5d03065dfd20912fe877/) | StakingPositions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x655c94...767cc8`](./contracts/sonic-146/0x655c94df33d39a126f9260f4b795b51336767cc8/) | StakingPositionsSonic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2ed903...40fd7e`](./contracts/arbitrum-42161/0x2ed9031c6aaac0c42972e133776d133fcc40fd7e/) | StakingRewardsDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x3bcb3c...b40e4c`](./contracts/sonic-146/0x3bcb3c2992a1a4c2c97010c6d6789f6abcb40e4c/) | StakingRewardsDistributorSonic | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x4fec0c...135d73`](./contracts/sonic-146/0x4fec0c1c745c2d8ebb4fffa0d4e8d1395a135d73/) | Storage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xc1f003...853009`](./contracts/arbitrum-42161/0xc1f003474705e229ed8ad5c9aee017bbda853009/) | TSTTOKEN | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 39 |
| upstream | 0 |
| standard_library | 5 |
| needs_review | 17 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
