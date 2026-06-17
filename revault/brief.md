# Agentic Audit Brief: Revault

⚠️ Lifecycle status: DECLINING - TVL changed 4.3% over 90 days

## Project Overview

- Project: Revault (`revault`)
- Lifecycle: declining (Tier 0, 95.8% below peak)
- Generated: 2026-06-17T07:01:00.827Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: bsc
- Contract surface: 66 unique implementations (111 raw deployments)
- DeFi Llama TVL: $1,962,857.13
- On-chain TVL (included contracts): $2,293.54
- TVL by chain: Bsc $2,293.54

## Project Description

Revault is a yield optimization protocol on BSC that aggregates multiple vaults, staking pools, and auto-compounding strategies to maximize returns for deposited assets. Users can deposit tokens into various vaults and staking pools, which are managed through a system of fee receivers, zaps, and chef contracts.

### Architecture

All product families share the RevaToken as the central incentive token, distributed by various RevaChef contracts to staking pools and vaults. Supporting contracts like Zaps and FeeReceivers are reused across multiple vaults and pools to handle deposits, swaps, and fee collection.

## Contract Surface Quality

- Indexed contracts: 218; live-surface contracts included: 111 (0 live, 111 unknown).
- Excluded by liveness: 0 inactive, 107 singleton, 0 uninitialized.
- Deployment units: 0/34 live.
- Detected codebases: none
- Unverified dependencies: 1/5.

## Audit Coverage Summary

- Verified implementations audited: 8/20 (40.0%)
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 0
- Unverified implementations: 46
- Unique implementations: 66
- Raw deployments: 111
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-09 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Paladin | Tier 2 | 8 | 40.0% | 2021-09 |

## Contract Surface

### ✅ Verified + Audited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| RevaToken | token | bsc | n/a | 5 deployments: bsc [`0x20e2d2...53832b`](./contracts/bsc-56/0x20e2d23916a0d1895952708df1d895f2ca53832b/); bsc `0x3cf362...ff089d`; bsc `0x4fdd92...7b4a3b`; bsc `0x900525...7007bc`; bsc `0xb0b8ac...2e6613` | ✅ Audited |
| RevaChef | unknown | bsc | n/a | 2 deployments: bsc [`0x26feb3...19ac96`](./contracts/bsc-56/0x26feb32998ea18e189f92839aa6bd56b0419ac96/); bsc `0x5ad9b8...8d00d0` | ✅ Audited |
| RevaFeeReceiver | unknown | bsc | n/a | 2 deployments: bsc [`0x1283fe...67e6df`](./contracts/bsc-56/0x1283fe5a6d60d326852881e4c8d8b64b5967e6df/); bsc `0xfd177a...e0ca5d` | ✅ Audited |
| RevaStakingPool | core_logic | bsc | n/a | 2 deployments: bsc [`0x7037cc...f1c88d`](./contracts/bsc-56/0x7037cc15a917772007e26299256ebe2a6af1c88d/); bsc `0xcdfd95...40ec1a` | ✅ Audited |
| Timelock | governance | bsc | n/a | 3 deployments: bsc [`0x192266...85061b`](./contracts/bsc-56/0x192266573f96e159bf794665af4c19dae385061b/); bsc `0x30ec49...4e28bc`; bsc `0xe8e071...6c5fc6` | ✅ Audited |
| vRevaToken | token | bsc | n/a | 11 deployments: bsc [`0x02103c...b7f16c`](./contracts/bsc-56/0x02103ca404c26fefea794f6b7328837d8eb7f16c/); bsc `0x04cebe...30c061`; bsc `0x089468...1d46ec`; bsc `0x0e0907...237e80`; bsc `0x1c2c1b...c52c43`; bsc `0x33e376...a6bda9`; bsc `0x434a8b...994037`; bsc `0x4627ba...a7964d`; bsc `0x7647c3...e68152`; bsc `0x774d91...aef658`; bsc `0x87957a...0a5298` | ✅ Audited |
| Zap | adapter | bsc | n/a | 2 deployments: bsc [`0x65e26f...f78fd9`](./contracts/bsc-56/0x65e26f447a79761e4253430d0677206070f78fd9/); bsc `0xefbcba...6e0fad` | ✅ Audited |
| ZapAndDeposit | adapter | bsc | n/a | [`0x43c038...a32aba`](./contracts/bsc-56/0x43c038963f3d1ab878bf601715e7ae6714a32aba/) | ✅ Audited |

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LpLocker | unknown | bsc | n/a | 3 deployments: bsc [`0xd8354a...76c64b`](./contracts/bsc-56/0xd8354a91b3d0eee97205c538444483eaf976c64b/); bsc `0xf9ee40...ac05d5`; bsc `0xfd46f6...d08483` | ⚠️ Unaudited |
| Presale | unknown | bsc | n/a | 3 deployments: bsc [`0x4beb35...37a39e`](./contracts/bsc-56/0x4beb358a35f1f9adc6b5338427cd90457f37a39e/); bsc `0x59d76d...c3062f`; bsc `0xf2b74a...e3b420` | ⚠️ Unaudited |
| ProxyAdmin | governance | bsc | n/a | 6 deployments: bsc [`0x1bfae5...08334d`](./contracts/bsc-56/0x1bfae52a3c3a5153cf91293d335773531e08334d/); bsc `0x4f5771...ccc2d8`; bsc `0x8797d1...7fcea0`; bsc `0x90ee47...a880d6`; bsc `0xd1c993...3be6ff`; bsc `0xddd336...24d4bf` | ⚠️ Unaudited |
| RevaAutoCompoundPool | core_logic | bsc | unit-32590 | [`0x5370db...8b3d37`](./contracts/bsc-56/0x5370db3a181638771d1d8641a2d33469128b3d37/) | ⚠️ Unaudited |
| RevaAutoCompoundPool | core_logic | bsc | unit-32591 (2 proxies) | 2 deployments: bsc [`0x659239...9ffcee`](./contracts/bsc-56/0x659239b40411e08b2c8b7ca2f70bcb46d59ffcee/); bsc `0xfb284e...376ed1` | ⚠️ Unaudited |
| RevaAutoCompoundPool | core_logic | bsc | unit-32603 | [`0xc3d06f...9a2f4f`](./contracts/bsc-56/0xc3d06f7f6806ff70ab6a2338a4cb298f2c9a2f4f/) | ⚠️ Unaudited |
| RevaAutoCompoundPool | core_logic | bsc | unit-32607 | [`0xe8f1cd...37d3cb`](./contracts/bsc-56/0xe8f1cda385a58ae1c1c1b71631da7ad6d137d3cb/) | ⚠️ Unaudited |
| RevaGovernance | unknown | bsc | n/a | 2 deployments: bsc [`0x198699...30b4e0`](./contracts/bsc-56/0x19869971c8fee7aba38d87f41704cae3df30b4e0/); bsc `0xfd1b18...dc25ce` | ⚠️ Unaudited |
| ReVault | core_logic | bsc | n/a | 8 deployments: bsc [`0x153cf5...61cb84`](./contracts/bsc-56/0x153cf5c81dc90a630b95753613a8bbcb1661cb84/); bsc `0x650bfa...65be9c`; bsc `0x8d3d3d...148482`; bsc `0xa4c23f...61b065`; bsc `0xb9bfc7...e0cbd8`; bsc `0xc650dc...9ed003`; bsc `0xee9872...292882`; bsc `0xfba9ca...506053` | ⚠️ Unaudited |
| VaultBalances | core_logic | bsc | n/a | [`0x7a454c...8e256b`](./contracts/bsc-56/0x7a454c8014ab06e100a627b5a80b1ea0728e256b/) | ⚠️ Unaudited |
| Vesting | operational_periphery | bsc | n/a | 8 deployments: bsc [`0x3d6efb...bf3f1a`](./contracts/bsc-56/0x3d6efb3593a7594e3f002e986126f69e20bf3f1a/); bsc `0x6868e3...a97f9c`; bsc `0x6ae990...50cee1`; bsc `0xac59a3...a1cc4b`; bsc `0xbac5a0...98c763`; bsc `0xcd8db0...cf42ff`; bsc `0xec12f9...1a3d28`; bsc `0xf18d99...912340` | ⚠️ Unaudited |
| WrappedReva | unknown | bsc | n/a | [`0xec81aa...ee2ae7`](./contracts/bsc-56/0xec81aa154d470c6857219b529de3f1d755ee2ae7/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (46)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x0617d8...a6bda1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0841c9...511ea0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0f3254...8c8ace` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1b416f...4a4591` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1d2ab0...bd1593` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x20ffe9...d3c29e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2f35ed...0c3c09` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3579f0...222f7f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3be5d6...253216` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x584add...810df2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x62cd39...cc9033` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x650c43...b085af` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x68e282...9204b7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6d3afe...a6fb00` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x77cdf0...956830` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7ae32d...9a31ee` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7b3b8e...46c5b8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7bcc6e...dc5a6d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7c4add...ff27e4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7d954d...0aca2c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7ff91e...b5b136` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x89c090...f74aed` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8cb427...467d71` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x977ba7...c62a02` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x98e323...1361ac` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9bb4ed...1f2eb5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9c930c...59e3e9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa6750f...ce84b6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xac9dc1...d810e0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xad596a...a5d505` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xae4bf4...88a4da` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb0586f...d79519` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb2215a...c2b39d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xba94d4...1fcb12` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xccbd15...6a3851` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd2920b...4f4f46` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd75593...d9d1ac` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe444f2...8aedd6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe520fe...810815` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe6d5aa...6677f4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe7ec83...5da8bb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xeb412f...af65c1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xec7ac0...8f1f5b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xef039d...f86562` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf210cd...84a8b0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfcebc3...77281a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://paladinsec.co/projects/revault-network) | Paladin | Audit | 2021-09 | stale | Direct | contract_name | 28 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0xd8354a...76c64b`](./contracts/bsc-56/0xd8354a91b3d0eee97205c538444483eaf976c64b/) | LpLocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4beb35...37a39e`](./contracts/bsc-56/0x4beb358a35f1f9adc6b5338427cd90457f37a39e/) | Presale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x198699...30b4e0`](./contracts/bsc-56/0x19869971c8fee7aba38d87f41704cae3df30b4e0/) | RevaGovernance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x153cf5...61cb84`](./contracts/bsc-56/0x153cf5c81dc90a630b95753613a8bbcb1661cb84/) | ReVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7a454c...8e256b`](./contracts/bsc-56/0x7a454c8014ab06e100a627b5a80b1ea0728e256b/) | VaultBalances | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3d6efb...bf3f1a`](./contracts/bsc-56/0x3d6efb3593a7594e3f002e986126f69e20bf3f1a/) | Vesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xec81aa...ee2ae7`](./contracts/bsc-56/0xec81aa154d470c6857219b529de3f1d755ee2ae7/) | WrappedReva | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 15 |
| upstream | 0 |
| standard_library | 5 |
| needs_review | 46 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=102

Fork inheritance lineage and inherited audits are included when available.
