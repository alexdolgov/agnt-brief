# Agentic Audit Brief: Mu Digital

## Project Overview

- Project: Mu Digital (`mu-digital`)
- Website: [https://mudigital.net](https://mudigital.net)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:36.972Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d094
- Chains: ethereum
- Contract surface: 21 unique implementations (42 raw deployments)
- DeFi Llama TVL: $17,297,095.47
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

RWA. Structurally: 10 project-authored contract(s) across 1 chain(s); 1 ERC4626 vault, 3 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 2 common project-authored base contract(s) (contractbaseupgradeable, contractuupsupgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 42; live-surface contracts included: 29 (29 live, 0 unknown).
- Excluded by liveness: 13 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 6/21 (28.6%)
- Deployed-live implementations: 21 of 21 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 6/21
- Verified + Unaudited implementations: 15
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 21
- Raw deployments: 42
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 2 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 6 match-unverified
- Tier 1 coverage: 28.6% (SlowMist)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SlowMist | Tier 1 | 6 | 28.6% | 2025-10 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccessManager | governance | ethereum | n/a | 4 deployments: ethereum [`0x4122ee38cc344784ae1a7f11afa2cfa89cfc9184`](./contracts/ethereum-1/0x4122ee38cc344784ae1a7f11afa2cfa89cfc9184/); ethereum `0x43e1177e6934761c53368e122afd076aaa4b426f`; ethereum `0x549b906a5cd2c59c7bf1d0644e19ddeb47ba7fb6`; ethereum `0xc0f4f4a3a2d168145dca6ac30e0eae348afc8f08` | ✅ Audited |
| MuBOND | unknown | ethereum | n/a | [`0x8169e15aa5dfd4766b9fd5e247c7614e127c98ba`](./contracts/ethereum-1/0x8169e15aa5dfd4766b9fd5e247c7614e127c98ba/) | ✅ Audited |
| MuBONDPriceFeed | operational_periphery | ethereum | n/a | [`0xca5b9e561e3d94c8b3a90278d6e1752e8445a7a1`](./contracts/ethereum-1/0xca5b9e561e3d94c8b3a90278d6e1752e8445a7a1/) | ✅ Audited |
| MuBONDPriceFeed | operational_periphery | ethereum | n/a | [`0xdefb60c6c3d46cf324c8fad8edb989c47192ed70`](./contracts/ethereum-1/0xdefb60c6c3d46cf324c8fad8edb989c47192ed70/) | ✅ Audited |
| PriceFeed | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x5588f4090dfd88e0753a8ba2a08d639d7888ed32`](./contracts/ethereum-1/0x5588f4090dfd88e0753a8ba2a08d639d7888ed32/); ethereum `0xd3745307af70126693bfd8db0b16be0a013327bf` | ✅ Audited |
| PriceFeed | operational_periphery | ethereum | n/a | [`0xe200c42374258c4c192f35e4beb5e489b0cbc0a4`](./contracts/ethereum-1/0xe200c42374258c4c192f35e4beb5e489b0cbc0a4/) | ✅ Audited |

### ⚠️ Verified + Unaudited (15)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccessManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3eefda14348c364493f6a0c12c11bdd32ebff74c`](./contracts/ethereum-1/0x3eefda14348c364493f6a0c12c11bdd32ebff74c/); ethereum `0xe683fcd4411dde6fc2be16c2512f9109c907b520` | ⚠️ Unaudited |
| AccessManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4e889dca50a731579b2612ec96e0f9a539df9690`](./contracts/ethereum-1/0x4e889dca50a731579b2612ec96e0f9a539df9690/); ethereum `0xfae2877f80bb365e87cdfa205599ec90cb85e9c4` | ⚠️ Unaudited |
| AccessManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x96702013928fccf99c3c7ea86f1ad05d45a63394`](./contracts/ethereum-1/0x96702013928fccf99c3c7ea86f1ad05d45a63394/); ethereum `0xab3d620562d55cd3253ea155a41c8eacf390d7d6` | ⚠️ Unaudited |
| AZND | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2e49c14a73210356de9f23a46a98de777b8a0db6`](./contracts/ethereum-1/0x2e49c14a73210356de9f23a46a98de777b8a0db6/); ethereum `0x52c66b5e7f8fde20843de900c5c8b4b0f23708a0` | ⚠️ Unaudited |
| LoAZND | unknown | ethereum | n/a | 2 deployments: ethereum [`0x703bd6efee75cf36c1af0c7b3ba10a7e5232e7e1`](./contracts/ethereum-1/0x703bd6efee75cf36c1af0c7b3ba10a7e5232e7e1/); ethereum `0xa6142276526724cfaee9151d280385bdf43e0503` | ⚠️ Unaudited |
| MuBOND | unknown | ethereum | n/a | 2 deployments: ethereum [`0x09ad9c6dcadcc3ab0b3e107e8e7da69c2eea8599`](./contracts/ethereum-1/0x09ad9c6dcadcc3ab0b3e107e8e7da69c2eea8599/); ethereum `0xfc4e6d88c2fe012d9611de4accb6463067e92dbd` | ⚠️ Unaudited |
| PreDeposit | unknown | ethereum | n/a | 4 deployments: ethereum [`0x00692cc98b70639c6a47f01a4a7bd7a1e2e5cd01`](./contracts/ethereum-1/0x00692cc98b70639c6a47f01a4a7bd7a1e2e5cd01/); ethereum `0x7ad72f260d105dc971816f2c3d77a53e3bd49827`; ethereum `0xb0d32399f28f0d745d6aee79e5308467e90627f6`; ethereum `0xf17ee237cb267f7f8311a88e37f823952ea7c1ec` | ⚠️ Unaudited |
| PreDeposit | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2a3861e09302165533945a88ce3129cdf26b1073`](./contracts/ethereum-1/0x2a3861e09302165533945a88ce3129cdf26b1073/); ethereum `0xade59b54db0b5f41551efc020fbdbf41be601ba2` | ⚠️ Unaudited |
| PrimaryMarket | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3ee90f1a7da3d5a9e381ce7b37bbc426d679ce25`](./contracts/ethereum-1/0x3ee90f1a7da3d5a9e381ce7b37bbc426d679ce25/); ethereum `0xb6c5c40a6e4633d25c7c644a5d572f079d1c645e` | ⚠️ Unaudited |
| PrimaryMarket | unknown | ethereum | n/a | 2 deployments: ethereum [`0xe7c05c93b794cd21ab84c33d07d1ce071cbb32cc`](./contracts/ethereum-1/0xe7c05c93b794cd21ab84c33d07d1ce071cbb32cc/); ethereum `0xff6c13faa41c4cdfecde8cd831c89cc0e7c7d7cf` | ⚠️ Unaudited |
| RewardDistributor | unknown | ethereum | n/a | 2 deployments: ethereum [`0x223b70103ac61e6d357ef0556bcc96b8802ec543`](./contracts/ethereum-1/0x223b70103ac61e6d357ef0556bcc96b8802ec543/); ethereum `0xf0d35e62bfba16be2a5e0eff290b9a1f5f6c8e2e` | ⚠️ Unaudited |
| StakingEscrow | unknown | ethereum | n/a | 2 deployments: ethereum [`0x61cebec9bb555e2c81c0f9d212b53809888e53b2`](./contracts/ethereum-1/0x61cebec9bb555e2c81c0f9d212b53809888e53b2/); ethereum `0xbc49587395291ca568eb97dde04b842421d12565` | ⚠️ Unaudited |
| SYLoAZND | unknown | ethereum | n/a | 2 deployments: ethereum [`0x51df572286ae0c84f4eacad7c23c2b58e78cb1bc`](./contracts/ethereum-1/0x51df572286ae0c84f4eacad7c23c2b58e78cb1bc/); ethereum `0x6ca835b6604e000c635f43ff20c8abdc570d86a0` | ⚠️ Unaudited |
| SYLoAZND | unknown | ethereum | n/a | 2 deployments: ethereum [`0x53e23ba460a8ece21da28ca27e398c32b39d29f5`](./contracts/ethereum-1/0x53e23ba460a8ece21da28ca27e398c32b39d29f5/); ethereum `0x80cca9fbe512eb75a9b6523f0e077cb780241a77` | ⚠️ Unaudited |
| TreasuryManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x77563f46c20df04c4020981ce38cc341320d63ba`](./contracts/ethereum-1/0x77563f46c20df04c4020981ce38cc341320d63ba/); ethereum `0xb4e8d2138a0e3f221c9dfa1cb1a95f1275215b6a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Mu Protocol - SlowMist Audit Report.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/Mu%20Protocol%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2025-10 | fresh | Direct | contract_name | 6 | n/a |
| [hacken.io/audits/mu-digital](https://hacken.io/audits/mu-digital) | Hacken | Audit | 2026-03 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x3eefda14348c364493f6a0c12c11bdd32ebff74c`](./contracts/ethereum-1/0x3eefda14348c364493f6a0c12c11bdd32ebff74c/) | AccessManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4e889dca50a731579b2612ec96e0f9a539df9690`](./contracts/ethereum-1/0x4e889dca50a731579b2612ec96e0f9a539df9690/) | AccessManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x96702013928fccf99c3c7ea86f1ad05d45a63394`](./contracts/ethereum-1/0x96702013928fccf99c3c7ea86f1ad05d45a63394/) | AccessManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2e49c14a73210356de9f23a46a98de777b8a0db6`](./contracts/ethereum-1/0x2e49c14a73210356de9f23a46a98de777b8a0db6/) | AZND | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x703bd6efee75cf36c1af0c7b3ba10a7e5232e7e1`](./contracts/ethereum-1/0x703bd6efee75cf36c1af0c7b3ba10a7e5232e7e1/) | LoAZND | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x09ad9c6dcadcc3ab0b3e107e8e7da69c2eea8599`](./contracts/ethereum-1/0x09ad9c6dcadcc3ab0b3e107e8e7da69c2eea8599/) | MuBOND | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00692cc98b70639c6a47f01a4a7bd7a1e2e5cd01`](./contracts/ethereum-1/0x00692cc98b70639c6a47f01a4a7bd7a1e2e5cd01/) | PreDeposit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2a3861e09302165533945a88ce3129cdf26b1073`](./contracts/ethereum-1/0x2a3861e09302165533945a88ce3129cdf26b1073/) | PreDeposit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3ee90f1a7da3d5a9e381ce7b37bbc426d679ce25`](./contracts/ethereum-1/0x3ee90f1a7da3d5a9e381ce7b37bbc426d679ce25/) | PrimaryMarket | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe7c05c93b794cd21ab84c33d07d1ce071cbb32cc`](./contracts/ethereum-1/0xe7c05c93b794cd21ab84c33d07d1ce071cbb32cc/) | PrimaryMarket | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x223b70103ac61e6d357ef0556bcc96b8802ec543`](./contracts/ethereum-1/0x223b70103ac61e6d357ef0556bcc96b8802ec543/) | RewardDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x61cebec9bb555e2c81c0f9d212b53809888e53b2`](./contracts/ethereum-1/0x61cebec9bb555e2c81c0f9d212b53809888e53b2/) | StakingEscrow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x51df572286ae0c84f4eacad7c23c2b58e78cb1bc`](./contracts/ethereum-1/0x51df572286ae0c84f4eacad7c23c2b58e78cb1bc/) | SYLoAZND | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x53e23ba460a8ece21da28ca27e398c32b39d29f5`](./contracts/ethereum-1/0x53e23ba460a8ece21da28ca27e398c32b39d29f5/) | SYLoAZND | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x77563f46c20df04c4020981ce38cc341320d63ba`](./contracts/ethereum-1/0x77563f46c20df04c4020981ce38cc341320d63ba/) | TreasuryManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 21 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=6

Zero-match audit list:

- [1914] hacken.io/audits/mu-digital

Fork inheritance lineage and inherited audits are included when available.
