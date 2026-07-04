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
| AlgebraPool | core_logic | arbitrum | n/a | [`0xe9d3e6...2a6741`](./contracts/arbitrum-42161/0xe9d3e6811d1be8ba40a9273ebec6ff09fe2a6741/) | ⚠️ Unaudited |
| Burner | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x3e0b30...2011f9`](./contracts/arbitrum-42161/0x3e0b30de227761d692260a01e04e364a622011f9/); arbitrum `0xd9f5b3...092eaa` | ⚠️ Unaudited |
| CErc20Compounded | token | arbitrum | n/a | [`0xff2073...43c943`](./contracts/arbitrum-42161/0xff2073d3810754d6da4783235c8647e11e43c943/) | ⚠️ Unaudited |
| CErc20DelegateGmx | token | arbitrum | n/a | 2 deployments: arbitrum [`0x20a676...7ad497`](./contracts/arbitrum-42161/0x20a6768f6aabf66b787985ec6ce0ebea6d7ad497/); arbitrum `0x628650...13ac5a` | ⚠️ Unaudited |
| CEther | unknown | arbitrum | n/a | [`0x070690...fcdcdf`](./contracts/arbitrum-42161/0x0706905b2b21574defcf00b5fc48068995fcdcdf/) | ⚠️ Unaudited |
| Comptroller | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x0e9109...81ad70`](./contracts/arbitrum-42161/0x0e9109c678ba6e807dd53ecf7a5a1e658681ad70/); arbitrum `0x49ea2c...925db3` | ⚠️ Unaudited |
| Comptroller | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x1ffddc...6b4d2e`](./contracts/arbitrum-42161/0x1ffddc9578521602c9aadb5dbc220a553a6b4d2e/); arbitrum `0xeed247...808f8e` | ⚠️ Unaudited |
| Comptroller | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x421313...596e8e`](./contracts/arbitrum-42161/0x4213135a86e01dfa62125b6ad17d96d302596e8e/); arbitrum `0xaeae92...578230` | ⚠️ Unaudited |
| Comptroller | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x4f2a26...f749b5`](./contracts/arbitrum-42161/0x4f2a26f1c4998a8c6ae9a1ee24d2b439abf749b5/); arbitrum `0x60437f...067033` | ⚠️ Unaudited |
| Comptroller | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x5d5732...303d54`](./contracts/arbitrum-42161/0x5d57328423bed206e0ee41c32bbce4252e303d54/); arbitrum `0xb7c1a9...eeb278` | ⚠️ Unaudited |
| EsTND | unknown | arbitrum | n/a | 6 deployments: arbitrum [`0x411380...9159c9`](./contracts/arbitrum-42161/0x4113805f8e2098cf4bc20321dbc210c0869159c9/); arbitrum `0x4c3d0b...ee2af7`; arbitrum `0x6893ef...6c9719`; arbitrum `0xd49f6e...d736ed`; arbitrum `0xf518be...53100d`; arbitrum `0xff9bd4...654ab2` | ⚠️ Unaudited |
| HandledImpl | unknown | arbitrum | n/a | 14 deployments: arbitrum [`0x068485...c48b4e`](./contracts/arbitrum-42161/0x068485a0f964b4c3d395059a19a05a8741c48b4e/); arbitrum `0x0a2f8b...6cf391`; arbitrum `0x27846a...69b9ab`; arbitrum `0x4180f3...6842c3`; arbitrum `0x4a5806...bf7e31`; arbitrum `0x80aefb...74ceb9`; arbitrum `0x87d06b...7a1c35`; arbitrum `0x8b44d3...2b3a71`; arbitrum `0xb28718...2f6299`; arbitrum `0xb5dbdb...c91529`; arbitrum `0xb60ef5...cdcb9c`; arbitrum `0xc571c3...874a76`; arbitrum `0xc6121d...523539`; arbitrum `0xe4843e...f8ea16` | ⚠️ Unaudited |
| InstantVester | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x57437f...27c46f`](./contracts/arbitrum-42161/0x57437f98ce4fd4d3cc1827b0095d93184827c46f/); arbitrum `0xc2378a...9d8df6` | ⚠️ Unaudited |
| JumpRateModelV2 | operational_periphery | arbitrum | n/a | [`0xc2933e...229595`](./contracts/arbitrum-42161/0xc2933eff32188e4655887cdc9c707a77e1229595/) | ⚠️ Unaudited |
| MintableBaseToken | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x0d2ebf...9e3718`](./contracts/arbitrum-42161/0x0d2ebf71afdfafe8e3fde3eaf9c502896f9e3718/); arbitrum `0x417d08...8d2433`; arbitrum `0x68407f...0a161c` | ⚠️ Unaudited |
| TenderPriceOracle | unknown | arbitrum | n/a | 5 deployments: arbitrum [`0x0c2612...4d77d2`](./contracts/arbitrum-42161/0x0c261270ed2e036c9525243e5dd0e95f824d77d2/); arbitrum `0x4e8105...4637ba`; arbitrum `0x899635...2171db`; arbitrum `0xa11bad...6fd5c6`; arbitrum `0xc2dd40...150aec` | ⚠️ Unaudited |
| TND | unknown | arbitrum | n/a | [`0xc47d97...d2798c`](./contracts/arbitrum-42161/0xc47d9753f3b32aa9548a7c3f30b6aec3b2d2798c/) | ⚠️ Unaudited |
| Unitroller | unknown | arbitrum | n/a | [`0xc825a1...97b8bf`](./contracts/arbitrum-42161/0xc825a185036516087c5ea8d22da924520497b8bf/) | ⚠️ Unaudited |
| WithdrawLever | unknown | arbitrum | n/a | [`0xd16c3a...7f59a6`](./contracts/arbitrum-42161/0xd16c3a58e083fec73a271a6954dc3bc2e57f59a6/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | arbitrum | n/a | `0x02c4f9...65ab64` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x034be4...1848b1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x04ff5f...fcab76` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0f5bdb...652a3c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x107761...1fb2b0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x11cc44...3c89d8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x142b1a...b67d02` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x169939...007e40` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x16b044...22efc6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1b3436...b51177` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x21495b...416b8e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x29cb0f...1a26cb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2e43be...0842b9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2f207b...22a0ca` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x371329...0be572` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x43eb42...db3477` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x458f8b...cbeeb8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x45e6dc...b99935` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x46dae2...92148e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x484dfe...a37ed5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4ca3b1...85926b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4df9b2...be7473` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4f2385...0c4ec1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x52ec6c...45738b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5d281b...dd1413` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5d39f4...547c72` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5e7b4d...7635fe` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x62ab9b...0935c9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x65e62a...4d6597` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6af1c1...7a0f1a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6d9bd6...d8586f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6f3446...fc2846` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6f55a9...7118bf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7b6901...e6e43b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x827d52...f3c852` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x846e46...77817b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x89229b...e581c0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x914f92...5d0883` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x92c2aa...c349b5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xaa11b9...fb05a9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbe983e...5f2e4f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbfb06b...d965ee` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc4eb30...40294f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcb3bba...5a1275` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd233a6...198bcf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xde0f22...94b8a5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xde52bf...0df05a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe86fd9...d4c1f3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf7d4db...51c312` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfabadc...24b876` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [odex.vip](http://odex.vip/?sign=6100531bc2e5bf8b94dd7a7b87b53577) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0xe9d3e6...2a6741`](./contracts/arbitrum-42161/0xe9d3e6811d1be8ba40a9273ebec6ff09fe2a6741/) | AlgebraPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3e0b30...2011f9`](./contracts/arbitrum-42161/0x3e0b30de227761d692260a01e04e364a622011f9/) | Burner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xff2073...43c943`](./contracts/arbitrum-42161/0xff2073d3810754d6da4783235c8647e11e43c943/) | CErc20Compounded | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x20a676...7ad497`](./contracts/arbitrum-42161/0x20a6768f6aabf66b787985ec6ce0ebea6d7ad497/) | CErc20DelegateGmx | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x070690...fcdcdf`](./contracts/arbitrum-42161/0x0706905b2b21574defcf00b5fc48068995fcdcdf/) | CEther | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0e9109...81ad70`](./contracts/arbitrum-42161/0x0e9109c678ba6e807dd53ecf7a5a1e658681ad70/) | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1ffddc...6b4d2e`](./contracts/arbitrum-42161/0x1ffddc9578521602c9aadb5dbc220a553a6b4d2e/) | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x421313...596e8e`](./contracts/arbitrum-42161/0x4213135a86e01dfa62125b6ad17d96d302596e8e/) | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4f2a26...f749b5`](./contracts/arbitrum-42161/0x4f2a26f1c4998a8c6ae9a1ee24d2b439abf749b5/) | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5d5732...303d54`](./contracts/arbitrum-42161/0x5d57328423bed206e0ee41c32bbce4252e303d54/) | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x411380...9159c9`](./contracts/arbitrum-42161/0x4113805f8e2098cf4bc20321dbc210c0869159c9/) | EsTND | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x068485...c48b4e`](./contracts/arbitrum-42161/0x068485a0f964b4c3d395059a19a05a8741c48b4e/) | HandledImpl | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x57437f...27c46f`](./contracts/arbitrum-42161/0x57437f98ce4fd4d3cc1827b0095d93184827c46f/) | InstantVester | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xc2933e...229595`](./contracts/arbitrum-42161/0xc2933eff32188e4655887cdc9c707a77e1229595/) | JumpRateModelV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0d2ebf...9e3718`](./contracts/arbitrum-42161/0x0d2ebf71afdfafe8e3fde3eaf9c502896f9e3718/) | MintableBaseToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0c2612...4d77d2`](./contracts/arbitrum-42161/0x0c261270ed2e036c9525243e5dd0e95f824d77d2/) | TenderPriceOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xc47d97...d2798c`](./contracts/arbitrum-42161/0xc47d9753f3b32aa9548a7c3f30b6aec3b2d2798c/) | TND | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xc825a1...97b8bf`](./contracts/arbitrum-42161/0xc825a185036516087c5ea8d22da924520497b8bf/) | Unitroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xd16c3a...7f59a6`](./contracts/arbitrum-42161/0xd16c3a58e083fec73a271a6954dc3bc2e57f59a6/) | WithdrawLever | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
