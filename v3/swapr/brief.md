# Agentic Audit Brief: Swapr

## Project Overview

- Project: Swapr (`swapr`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:57.342Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: arbitrum, gnosis
- Contract surface: 10 unique implementations (10 raw deployments)
- DeFi Llama TVL: $749,491.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 10 project-authored contract(s) across 2 chain(s); 2 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 1 common project-authored base contract(s) (dxswaperc20). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 10; live-surface contracts included: 10 (10 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/10 (0.0%)
- Deployed-live implementations: 10 of 10 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/10
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 10
- Raw deployments: 10
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

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DXdaoERC20StakingRewardsDistributionFactory | unknown | gnosis | n/a | [`0x4e6a2e...b01402`](./contracts/gnosis-100/0x4e6a2ef2b0b7e405e0bdfeb56c3e09e3aeb01402/) | ⚠️ Unaudited |
| DXswapDeployer | unknown | gnosis | n/a | [`0x01f1b4...902518`](./contracts/gnosis-100/0x01f1b4a2a48d5739dcc80d9de0f38bcc24902518/) | ⚠️ Unaudited |
| DXswapFactory | unknown | gnosis | n/a | [`0x047f32...c1998d`](./contracts/gnosis-100/0x047f32f04c6a36bc28fe2d9fe407b49ad5c1998d/) | ⚠️ Unaudited |
| DXswapFeeReceiver | unknown | arbitrum | n/a | [`0x1d7c7c...24a1ae`](./contracts/arbitrum-42161/0x1d7c7cb66fb2d75123351fd0d6779e8d7724a1ae/) | ⚠️ Unaudited |
| DXswapFeeSetter | unknown | gnosis | n/a | [`0x34d924...d60f9d`](./contracts/gnosis-100/0x34d924f95313ee0faad03dac6cf60090a8d60f9d/) | ⚠️ Unaudited |
| DXswapRouter | unknown | gnosis | n/a | [`0x1dc945...3af36e`](./contracts/gnosis-100/0x1dc9455b013a854f5c25981a2963d6f53b3af36e/) | ⚠️ Unaudited |
| ERC20StakingRewardsDistribution | unknown | arbitrum | n/a | [`0xd28629...f37ba2`](./contracts/arbitrum-42161/0xd28629981518e2b2cd2d5125b371f9810bf37ba2/) | ⚠️ Unaudited |
| KPITokensFactory | unknown | gnosis | n/a | [`0xe9c1c9...3ceacb`](./contracts/gnosis-100/0xe9c1c9722bbe9e36489e16c095641b9c803ceacb/) | ⚠️ Unaudited |
| StandardArbERC20 | unknown | arbitrum | n/a | [`0xde903e...65ac30`](./contracts/arbitrum-42161/0xde903e2712288a1da82942dddf2c20529565ac30/) | ⚠️ Unaudited |
| SWPRConverter | unknown | arbitrum | n/a | [`0x2b058a...daddfd`](./contracts/arbitrum-42161/0x2b058af96175a847bf3e5457b3a702f807daddfd/) | ⚠️ Unaudited |

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
| [ipfs.io/ipfs/QmNspbn2dQgQMQ9uXkMc7Fjf12RUVVJTzB27ywGeLUXXdn](https://ipfs.io/ipfs/QmNspbn2dQgQMQ9uXkMc7Fjf12RUVVJTzB27ywGeLUXXdn) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 10 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21020] ipfs.io/ipfs/QmNspbn2dQgQMQ9uXkMc7Fjf12RUVVJTzB27ywGeLUXXdn

Fork inheritance lineage and inherited audits are included when available.
