# Agentic Audit Brief: iAero Protocol

## Project Overview

- Project: iAero Protocol (`iaero-protocol`)
- Website: [https://app.iaero.finance/](https://app.iaero.finance/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:59.995Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: base
- Contract surface: 35 unique implementations (52 raw deployments)
- DeFi Llama TVL: $2,228,897.27
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Liquid Staking. Structurally: 40 project-authored contract(s) across 1 chain(s); 6 ERC20 tokens, 1 ERC721 NFT; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 7 functional families. Its contracts share 4 common project-authored base contract(s) (erc20permit, eip712, erc2771context). Dominant framework: openzeppelin.

## Fork Lineage

This project reuses audited code from **Folks Finance** (`folks-finance`) in the Voter, VotingEscrow subsystem.
8 audits inherited from `folks-finance`, scoped to that subsystem.

Total inherited audits: 8. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 65; live-surface contracts included: 52 (44 live, 8 unknown).
- Excluded by liveness: 13 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/29 (6.9%)
- Deployed-live implementations: 29 of 35 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/29
- Verified + Unaudited implementations: 27
- Verified by bytecode match: 0
- Unverified implementations: 6
- Unique implementations: 35
- Raw deployments: 52
- Audits discovered: 8 (0 direct, 8 inherited from forked code)
- Scoreable audits (matched contracts): 8
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Audit staleness (calendar age): 1 fresh, 1 aging, 6 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 2 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 6.9% (Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Adevar | Tier 2 | 2 | 6.9% | 2025-10 |
| CertiK | Tier 2 | 2 | 6.9% | 2022-12 |
| Coinspect | Tier 2 | 2 | 6.9% | 2024-08 |
| Trail of Bits | Tier 1 | 2 | 6.9% | 2022-12 |
| unknown | Tier 2 | 2 | 6.9% | 2024-05 |
| Vantage Point | Tier 2 | 2 | 6.9% | 2023-03 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Voter | unknown | base | n/a | [`0x166135...c480a5`](./contracts/base-8453/0x16613524e02ad97edfef371bc883f2f5d6c480a5/) | ✅ Audited |
| VotingEscrow | operational_periphery | base | n/a | [`0xebf418...67e6b4`](./contracts/base-8453/0xebf418fe2512e7e6bd9b87a8f0f294acdc67e6b4/) | ✅ Audited |

### ⚠️ Verified + Unaudited (27)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Aero | token | base | n/a | [`0x940181...d98631`](./contracts/base-8453/0x940181a94a35a4569e4529a3cdfb74e38fd98631/) | ⚠️ Unaudited |
| EpochStakingDistributor | operational_periphery | base | n/a | [`0x781a80...a6588a`](./contracts/base-8453/0x781a80fa817b5a146c440f03ef8643f4aca6588a/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | base | n/a | [`0x833589...a02913`](./contracts/base-8453/0x833589fcd6edb6e08f4c7c32d4f71b54bda02913/) | ⚠️ Unaudited |
| GaugeFactory | operational_periphery | base | n/a | [`0x35f35c...5bbcb5`](./contracts/base-8453/0x35f35ca5b132cadf2916bab57639128eac5bbcb5/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | base | n/a | [`0x1039cb...739d37`](./contracts/base-8453/0x1039cb48254a3150fc604d4b9ea08f66f4739d37/) | ⚠️ Unaudited |
| iAEROAutoUSDCVault | core_logic | base | n/a | [`0xfe5c92...59c774`](./contracts/base-8453/0xfe5c929677d97723dc822c86c93c7e2d1b59c774/) | ⚠️ Unaudited |
| iAEROToken | token | base | n/a | 2 deployments: base [`0x81034f...46a1dc`](./contracts/base-8453/0x81034fb34009115f215f5d5f564aac9ffa46a1dc/); base `0xb2d632...f8f4c9` | ⚠️ Unaudited |
| LIQLinearVester | operational_periphery | base | n/a | [`0xf1d25f...f319db`](./contracts/base-8453/0xf1d25f4ee64988afad0f1612cc3d540725f319db/) | ⚠️ Unaudited |
| LIQStakingDistributor | operational_periphery | base | n/a | [`0xb81efc...0cdda4`](./contracts/base-8453/0xb81efc6be6622bf4086566210a6ad134cd0cdda4/) | ⚠️ Unaudited |
| LIQToken | token | base | n/a | [`0x7ee896...93e6a8`](./contracts/base-8453/0x7ee8964160126081cebc443a42482e95e393e6a8/) | ⚠️ Unaudited |
| Minter | operational_periphery | base | n/a | [`0xeb0183...a33fe5`](./contracts/base-8453/0xeb018363f0a9af8f91f06fee6613a751b2a33fe5/) | ⚠️ Unaudited |
| PermalockVault | core_logic | base | n/a | 4 deployments: base [`0x38cc79...f59c70`](./contracts/base-8453/0x38cc7923d5190a0e0fbdb8e51bce8ae8cef59c70/); base `0x430c3d...fb7ca0`; base `0x55816b...0f339c`; base `0x6584a3...552c61` | ⚠️ Unaudited |
| PermalockVault_V5 | core_logic | base | n/a | 3 deployments: base [`0x180dab...c37909`](./contracts/base-8453/0x180dab53968e599dd43cf431e27cb01aa5c37909/); base `0x877398...953957`; base `0x9322a2...8e3248` | ⚠️ Unaudited |
| Pool | core_logic | base | n/a | [`0x08d49d...38affd`](./contracts/base-8453/0x08d49da370ecffbc4c6fdd2ae82b2d6ae238affd/) | ⚠️ Unaudited |
| RewardsDistributor | operational_periphery | base | n/a | [`0x227f65...964c7d`](./contracts/base-8453/0x227f65131a261548b057215bb1d5ab2997964c7d/) | ⚠️ Unaudited |
| RewardsHarvester | operational_periphery | base | n/a | 4 deployments: base [`0x1dcdcc...4769ff`](./contracts/base-8453/0x1dcdcc16167520256c3b13e18266615d504769ff/); base `0x1f935e...44acfa`; base `0xa520f8...80750a`; base `0xe9fd07...9459c4` | ⚠️ Unaudited |
| RewardsHarvesterV2 | operational_periphery | base | n/a | [`0x77f90d...b8bfe5`](./contracts/base-8453/0x77f90d2ddb15ffe28fa322ada351d11da3b8bfe5/) | ⚠️ Unaudited |
| RewardsSugar | unknown | base | n/a | [`0xd4ad2e...defe3e`](./contracts/base-8453/0xd4ad2eeeb3314d54212a92f4cbbe684195defe3e/) | ⚠️ Unaudited |
| RewardTokenRegistry | registry | base | n/a | [`0xd3e32b...ca072c`](./contracts/base-8453/0xd3e32b22da6bf601a5917ecd344a7ec46bca072c/) | ⚠️ Unaudited |
| Router | adapter | base | n/a | [`0xcf77a3...874e43`](./contracts/base-8453/0xcf77a3ba9a5ca399b7c97c74d54e5b1beb874e43/) | ⚠️ Unaudited |
| StakingDistributor | operational_periphery | base | n/a | [`0x5ae349...9fc7e1`](./contracts/base-8453/0x5ae34974387dfe5b141770274adc7ef5749fc7e1/) | ⚠️ Unaudited |
| StakingDistributorV2 | operational_periphery | base | n/a | [`0x2c2b15...bd4dbf`](./contracts/base-8453/0x2c2b15113ad031ae12e154ee83f16a17dcbd4dbf/) | ⚠️ Unaudited |
| StiAERO | token | base | n/a | [`0x72c135...4d683d`](./contracts/base-8453/0x72c135b8eebc57a3823f0920233e1a90ff4d683d/) | ⚠️ Unaudited |
| TreasuryDistributor | operational_periphery | base | n/a | 4 deployments: base [`0x0ab24c...e65ee8`](./contracts/base-8453/0x0ab24cdd6e23040e37fc24b19e1d43fbe9e65ee8/); base `0x4306e5...5b1bdc`; base `0x7098c0...e541f9`; base `0xd36b84...76c8e0` | ⚠️ Unaudited |
| VeArtProxy | unknown | base | n/a | [`0xe99924...54643e`](./contracts/base-8453/0xe9992487b2ee03b7a91241695a58e0ef3654643e/) | ⚠️ Unaudited |
| VotingManager | governance | base | n/a | 4 deployments: base [`0x06026f...0565a4`](./contracts/base-8453/0x06026fe30ce9e9a613a21a87af210022c80565a4/); base `0xc9c7bf...a26498`; base `0xde7785...328c7f`; base `0xdf5ebf...61cebf` | ⚠️ Unaudited |
| VotingManagerOptimised | governance | base | n/a | 3 deployments: base [`0x1702dd...8e6fbb`](./contracts/base-8453/0x1702ddf00e4ff3ed892e569a26e0f1f6858e6fbb/); base `0xa0ebbd...fed0b8`; base `0xe7082a...5589b0` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (6)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | base | n/a | `0x0b4105...9ff4c4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x25f11f...e186c1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x536d46...aca7f6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x75f57f...aa765a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x775a59...a9ae0b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x81ce73...8e7246` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Adevar - Algorand Wormhole NTT - October 2025.pdf](https://github.com/Folks-Finance/audits/blob/main/Adevar%20-%20Algorand%20Wormhole%20NTT%20-%20October%202025.pdf) | Adevar | Audit | 2025-10 | fresh | Inherited from Folks Finance — forked code, scoped to Voter, VotingEscrow | inherited | 2 | n/a |
| [Coinspect - Audit of Liquid Staking - August 2024.pdf](https://github.com/Folks-Finance/audits/blob/main/Coinspect%20-%20Audit%20of%20Liquid%20Staking%20-%20August%202024.pdf) | Coinspect | Audit | 2024-08 | aging | Inherited from Folks Finance — forked code, scoped to Voter, VotingEscrow | inherited | 2 | n/a |
| [OtterSec - Audit of XChain Lending - May 2024.pdf](https://github.com/Folks-Finance/audits/blob/main/OtterSec%20-%20Audit%20of%20XChain%20Lending%20-%20May%202024.pdf) | unknown | Audit | 2024-05 | stale | Inherited from Folks Finance — forked code, scoped to Voter, VotingEscrow | inherited | 2 | n/a |
| [Vantage Point - Smart Contract Audit of xChain Liquid Governance - June 2023.pdf](https://github.com/Folks-Finance/audits/blob/main/Vantage%20Point%20-%20Smart%20Contract%20Audit%20of%20xChain%20Liquid%20Governance%20-%20June%202023.pdf) | unknown | Audit | 2023-06 | stale | Inherited from Folks Finance — forked code, scoped to Voter, VotingEscrow | inherited | 2 | n/a |
| [Vantage Point - Revision Audit of Liquid Governance V3 - March 2023.pdf](https://github.com/Folks-Finance/audits/blob/main/Vantage%20Point%20-%20Revision%20Audit%20of%20Liquid%20Governance%20V3%20-%20March%202023.pdf) | Vantage Point | Audit | 2023-03 | stale | Inherited from Folks Finance — forked code, scoped to Voter, VotingEscrow | inherited | 2 | n/a |
| [Certik - Smart Contract Audit - December 2022.pdf](https://github.com/Folks-Finance/audits/blob/main/Certik%20-%20Smart%20Contract%20Audit%20-%20December%202022.pdf) | CertiK | Audit | 2022-12 | stale | Inherited from Folks Finance — forked code, scoped to Voter, VotingEscrow | inherited | 2 | n/a |
| [Trail of Bits - Smart Contract Audit - December 2022.pdf](https://github.com/Folks-Finance/audits/blob/main/Trail%20of%20Bits%20-%20Smart%20Contract%20Audit%20-%20December%202022.pdf) | Trail of Bits | Audit | 2022-12 | stale | Inherited from Folks Finance — forked code, scoped to Voter, VotingEscrow | inherited | 2 | n/a |
| [Vantage Point - Smart Contract Audit - December 2022.pdf](https://github.com/Folks-Finance/audits/blob/main/Vantage%20Point%20-%20Smart%20Contract%20Audit%20-%20December%202022.pdf) | Vantage Point | Audit | 2022-12 | stale | Inherited from Folks Finance — forked code, scoped to Voter, VotingEscrow | inherited | 2 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 35 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: inherited_name_remap=16

Fork inheritance lineage and inherited audits are included when available.
