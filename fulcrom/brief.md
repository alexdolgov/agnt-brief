# Agentic Audit Brief: Fulcrom

## Project Overview

- Project: Fulcrom (`fulcrom`)
- Website: [https://fulcrom.finance](https://fulcrom.finance)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:17.212Z
- Pipeline run: v2-pipeline-2026-07-01-2b719a-2d9c
- Chains: cronos, zksync-era
- Contract surface: 19 unique implementations (56 raw deployments)
- DeFi Llama TVL: $10,216,452.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Fulcrom is a decentralized perpetual/leverage trading protocol with FUL and FLP staking and liquidity products. Its current chain presence includes Cronos, zkSync Era, and Cronos zkEVM; the indexed contract surface should be understood as covering only the listed contracts unless Cronos zkEVM contracts are added separately. Unsupported claims that Fulcrom provides general spot trading through a Fulcrom-owned AMM should be removed unless independently verified contracts and documentation are added.

### Architecture

The Fulcrom AMM and Perps families rely on the shared Fulcrom Core infrastructure for vaults, tokens, and oracles. The Cronos and zkSync Era families provide chain-specific adapters that integrate the core protocol with each blockchain.

## Contract Surface Quality

- Indexed contracts: 56; live-surface contracts included: 56 (0 live, 56 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/0 (0.0%)
- Deployed-live implementations: 0 of 19 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 19
- Unique implementations: 19
- Raw deployments: 56
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

### ⚠️ Verified + Unaudited (0)

- None

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (19)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | cronos | n/a | 38 deployments: cronos `0x09d7c9f284686c27a2caff3f2ff12e5cd3dfe20f`; cronos `0x1154973f8944751272ea2a19b9a9c5fb91135e4c`; cronos `0x133b7f9570b3be8e51ccd5da4654c3dde7657ae1`; cronos `0x1c29aee30b5b101edea936cd0caeec724e3b0045`; cronos `0x1db915e37889521e05332928f54c7c49bd876af7`; cronos `0x2275b50e92ad58787838261f06c005eae1f0691c`; cronos `0x2571470249273c7d4ef5b531bec539cd6026ce8b`; cronos `0x27e51d2b5a3283bef4014519f095ab8ddcf023f6`; cronos `0x27fb69422c457452d8b6fdcb18899d9b53c3f940`; cronos `0x2a628916f85caaf21daba223ff2d93aa07816652`; cronos `0x2c2e10eb9f3f9d33cde957e6d5a767b4feee1bda`; cronos `0x3881df9c3115aa4a2e35c080764b5dd8112de177`; cronos `0x390340ecbb495ae20137e94b3a0c945f9b51e0ef`; cronos `0x54a16dc46db7fc5dc99e41d9d464196b06c74e6e`; cronos `0x6148107bcac794d3fc94239b88fa77634983891f`; cronos `0x629a8dd6bff07844b25130ed659990d65e22baaa`; cronos `0x68f8a5d214ce3eecd8ac8ebd92f58842413c9d40`; cronos `0x6fcfd36a7d705608146cdd7773b531301952507e`; cronos `0x725c5af8bb360816c8ad2cca020f9c63b83abccb`; cronos `0x8268fe583bb27528cb86ffb622fe496eeaf77022`; cronos `0x83afb1c32e5637acd0a452d87c3249f4a9f0013a`; cronos `0x880a34751d8452df466ae27ac341f987f0daf3ae`; cronos `0x8c7ef34aa54210c76d6d5e475f43e0c11f876098`; cronos `0x8fbd95d76ede5a0d7eebea756515f1a363a7f6f7`; cronos `0x963c77444fbb29c2e943ffe91353aac390588c2e`; cronos `0xa461fa4bf68c72369db4fa8ed7cba4796598f2b0`; cronos `0xa8bea47bcfc17bb95f9510516b648833e3cd0446`; cronos `0xcc46b79ebeaa1d834b707624977ec261592e0c9a`; cronos `0xd2985b8ebc2ce32664ef235ca1d16e5fe8ae13fd`; cronos `0xd565cb10930f63fc9b5244310aa74bfd22069934`; cronos `0xd8ddc6b6eddd7a33bacc4ce580596c7fa351bc4d`; cronos `0xd996be6dbdeaa8429ff9e2d86725197eb663148a`; cronos `0xe0037027e9ff83720f6fa235c4c129169f690567`; cronos `0xe006ab8c1796674786ad8cf5937eff1baa59fa15`; cronos `0xe789d5a4256bb4273dac49dc112c597a327ef92d`; cronos `0xf5027eaa9ec25056262b747ab113cb48f5924050`; cronos `0xfc399dbb0ed942d206ee34cc6fcbaf1cfd60db16`; cronos `0xff7bba181023a637e6f9ffff5554c41dbb4981f4` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x022b94188219dbafc501abad95a6b61df5a17e3e` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x0cf43637c3040cf27a0b66d559e2dafae4105992` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x1886dfa728ed34a1b46decf7211cb643a844b982` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x2fb40160020ca0f87f3d2169e2af74f0706ef561` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x4bb06ef0fa3a1f2e5be97741779c7170018382ef` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x4bc4635d7bd964d7e3a1d9b471d55c092a781e3f` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x4d9193d87c57c0839157f8efde0a6aa8f4118a33` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x76df63db845027965b7f2da9acbd5994f3524c16` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x850fe8be964cc5feb3dd00cfe1364590b45e3926` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x873534b54be5a0c900798b0f775b2f0eb238e89f` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x88ca1fb542a8c45cccb0ee43042bac616319761b` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x93140f8d96f6819c84fac476e09110490e51b325` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x99819f0e0927718f5fbc73d3327ff7691d0243d6` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xc1088d3dd3e997aae11f0facb328843baa698464` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xdddf221d5293619572616574ff46a2760f162075` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xe593853b4d603d5b8f21036bb4ad0d1880097a6e` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xe6c1d52d1461e95dd75e497e9ed2267c39d31e15` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xf2220ae74866ff181b5922613f94d92e84f2491f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [SlowMist Audit Report - Fulcrom.pdf](https://1647136421-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FPkF01syfy7zFMzhDL9cH%2Fuploads%2FxWwYAjVNBOSkUS4qqV1u%2FSlowMist%20Audit%20Report%20-%20Fulcrom.pdf) | SlowMist | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 19 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [20333] SlowMist Audit Report - Fulcrom.pdf

Fork inheritance lineage and inherited audits are included when available.
