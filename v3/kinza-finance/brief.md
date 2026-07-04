# Agentic Audit Brief: Kinza Finance

## Project Overview

- Project: Kinza Finance (`kinza-finance`)
- Website: [https://app.kinza.finance](https://app.kinza.finance)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:19.970Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: bsc, ethereum, mantle, opbnb
- Contract surface: 115 unique implementations (126 raw deployments)
- DeFi Llama TVL: $6,547,336.82
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 51 project-authored contract(s) across 3 chain(s); 10 ERC20 tokens, 12 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 12 common project-authored base contract(s) (proxy, erc1967upgrade, erc165). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 238; live-surface contracts included: 126 (24 live, 102 unknown).
- Excluded by liveness: 112 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/13 (7.7%)
- Deployed-live implementations: 13 of 115 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/13
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 0
- Unverified implementations: 102
- Unique implementations: 115
- Raw deployments: 126
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Omniscia | Tier 2 | 1 | 7.7% | 2023-08 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ProtectedNativeTokenGateway | unknown | bsc | n/a | [`0x88e6ee...239337`](./contracts/bsc-56/0x88e6ee8bae18ebbc9a49f9627a0ea4ff94239337/) | ✅ Audited |

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveOracle | operational_periphery | ethereum | n/a | [`0x39abed...754a39`](./contracts/ethereum-1/0x39abeda13579fbb4effb31b5f38bdc91ae754a39/) | ⚠️ Unaudited |
| ACLManager | governance | ethereum | n/a | [`0x9074fc...095fdb`](./contracts/ethereum-1/0x9074fca9c7a77c7078b5bbfec33f74191d095fdb/) | ⚠️ Unaudited |
| AToken | token | bsc | n/a | 3 deployments: bsc [`0x26c8c9...9f4a04`](./contracts/bsc-56/0x26c8c9d74eae6182316b30de9ac60e2adc9f4a04/); bsc `0xe48967...796f5c`; bsc `0xf5e0ad...2dba0c` | ⚠️ Unaudited |
| ConfiguratorLogic | unknown | bsc | n/a | 2 deployments: ethereum `0xd74d44...74bc8d`; bsc [`0x306ca8...889871`](./contracts/bsc-56/0x306ca8e36c1dcc1e160f94d1eb5fd97cea889871/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | n/a | 2 deployments: ethereum [`0x8c99b0...5baa58`](./contracts/ethereum-1/0x8c99b0141849d8097309c8ea78f86b7bb65baa58/); ethereum `0xa3ec77...edfd16` | ⚠️ Unaudited |
| GnosisSafeProxy | governance | mantle | n/a | 3 deployments: opbnb `0x550330...9b1ed3`; mantle [`0x3cc8dc...561d68`](./contracts/mantle-5000/0x3cc8dc73aee77f787f3322e3ce61e14e58561d68/); mantle `0xb00083...12ee28` | ⚠️ Unaudited |
| kBTC | unknown | bsc | n/a | [`0x9356f6...b48383`](./contracts/bsc-56/0x9356f6d95b8e109f4b7ce3e49d672967d3b48383/) | ⚠️ Unaudited |
| Pool | core_logic | bsc | n/a | [`0xcb0620...963c8c`](./contracts/bsc-56/0xcb0620b181140e57d1c0d8b724cde623ca963c8c/) | ⚠️ Unaudited |
| PoolAddressesProvider | unknown | ethereum | n/a | 2 deployments: ethereum [`0x021889...6bd953`](./contracts/ethereum-1/0x0218890dd636c3a1cf0f98557ee2d3612c6bd953/); bsc `0xca20a5...1fd7ce` | ⚠️ Unaudited |
| PoolConfigurator | unknown | bsc | n/a | 2 deployments: ethereum `0x824a5b...1eabbd`; bsc [`0x25b36e...e902bb`](./contracts/bsc-56/0x25b36ed1e5b5b2b2978d473ed42928d3b6e902bb/) | ⚠️ Unaudited |
| ReservesSetupHelper | unknown | bsc | n/a | 3 deployments: bsc [`0x1f0d4b...450794`](./contracts/bsc-56/0x1f0d4b5e45e9d471aa67e3a1eb0a786e82450794/); bsc `0x2a8108...3b22b8`; bsc `0xd9c5bd...788f57` | ⚠️ Unaudited |
| WrappedTokenGatewayV3 | token | ethereum | n/a | 2 deployments: ethereum [`0xa4cd4b...781087`](./contracts/ethereum-1/0xa4cd4b5004ab42758bcb8893a10c5b3532781087/); bsc `0xcc650b...526739` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (102)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0xd27b00...3f83f1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x209f07...d4d475` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x433958...a26027` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x439e13...adfcad` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe26b3e...9cbb9c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf01f32...6b98cf` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x004a9e...d9cba6` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x077893...8abc6f` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x0c2d7e...4fe543` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x0df5a3...d95eb5` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x1c40ce...806836` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x1e1a67...29dffe` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x1f84bf...f0db11` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x209f07...d4d475` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x260a7f...eb0068` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x2a8108...3b22b8` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x306ca8...889871` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x30777a...3d616f` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x342019...9a00f1` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x35d8d7...f97c8a` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x36be6c...15b9dc` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x37d7eb...269189` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x3f8860...cab067` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x3fb65b...031710` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x41822c...92a85e` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x4bacc3...71c9d5` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x52cf67...7bc7ee` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x54c33c...6d8e67` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x54c547...10df4c` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x565ef2...c1a7bf` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x5ceb0e...546673` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x6e5b5c...f59046` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x722f6e...59e1b5` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x75257e...f04bbc` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x763b2a...2fc1c2` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x7954f3...24327f` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x7ad8c5...1006b3` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x88e984...5fe4de` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x8a8451...8a1278` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x8c9c95...779013` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x947ad3...1f3669` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x993e9a...949fa4` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x9c580c...781585` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xa6265a...b006fb` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xab98ae...6f18c6` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xb62afd...fa8345` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xbb5f2d...23eb5e` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xbc4318...357a2f` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xc086e1...90241a` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xc62cd1...ad0aa1` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xc7da75...a67e8a` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xc8cb15...cb28d9` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xca0eda...1dd0e0` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xca20a5...1fd7ce` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xcf46f7...ba9533` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xd67ff7...eff410` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xd9c5bd...788f57` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xdc68ac...065d8b` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xde451b...b69802` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xe8fcad...5ceb4d` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xec9582...9b9851` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xef31e7...24905d` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x002618...2315b2` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x0536e7...0051ea` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x0d4af5...8381b8` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x18cc2c...95ec38` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x1c3a49...6b001a` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x26b164...7e87dc` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x28a3f4...3f873c` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x2f31ac...c2e608` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x34edc3...972891` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x3ab164...6596dc` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x51ff36...373d64` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x532ece...757d72` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x58067d...bc6d90` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x69424f...f1ced7` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x6cf78e...9d5fc0` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x6f230e...2bf7e8` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x70fce7...82e5ce` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x7287d9...617f7f` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x758fb1...f61f13` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x7ba63a...aef8c5` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x7d3458...f3bf9b` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x9be413...612eb0` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x9cd978...b01f71` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xa4f75b...33bd4b` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xad4881...20abc2` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xbb0a49...c40153` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xbdf463...0f4b09` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xbf2602...7e51b6` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xc16ba9...0e6962` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xd5e6a1...c0b303` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xd62434...7a9438` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xd7933c...920d7a` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xe03379...fd9bdb` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xe2fee9...0583c0` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xe5ca43...283ffc` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xe5f546...661095` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xebf687...e05606` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xec63c5...5e2c18` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xf29d81...7a11ae` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xf4f615...e7df96` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [omniscia.io/reports/kinza-finance-wrapper-contracts-64d2056905462d0014ff3513](https://omniscia.io/reports/kinza-finance-wrapper-contracts-64d2056905462d0014ff3513) | Omniscia | Audit | 2023-08 | stale | Direct | contract_name | 1 | high |
| [Salus-Kinza-1.0.pdf](https://github.com/Kinza-Finance/KZA-1.0/blob/main/audits/Salus-Kinza-1.0.pdf) | unknown | Audit | 2023-06 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 115 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=1

Zero-match audit list:

- [10238] Salus-Kinza-1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
