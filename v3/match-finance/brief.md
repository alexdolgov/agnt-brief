# Agentic Audit Brief: Match Finance

## Project Overview

- Project: Match Finance (`match-finance`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:22.066Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: ethereum
- Contract surface: 43 unique implementations (55 raw deployments)
- DeFi Llama TVL: $1,985.22
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield Aggregator. Structurally: 48 project-authored contract(s) across 1 chain(s); 7 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 3 common project-authored base contract(s) (proxy, erc1967upgrade, idoconstants). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 110; live-surface contracts included: 48 (24 live, 24 unknown).
- Excluded by liveness: 62 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/23 (0.0%)
- Deployed-live implementations: 23 of 43 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/23
- Verified + Unaudited implementations: 23
- Verified by bytecode match: 0
- Unverified implementations: 20
- Unique implementations: 43
- Raw deployments: 55
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (23)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| EUSD | unknown | ethereum | n/a | [`0xdf3ac4...4262cc`](./contracts/ethereum-1/0xdf3ac4f479375802a821f7b7b46cd7eb5e4262cc/) | ⚠️ Unaudited |
| LBR | unknown | ethereum | n/a | [`0xed1167...981ebd`](./contracts/ethereum-1/0xed1167b6dc64e8a366db86f2e952a482d0981ebd/) | ⚠️ Unaudited |
| LybraConfigurator | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3b88f8...031e90`](./contracts/ethereum-1/0x3b88f81d375e053e2f1e54183e55bd9c43031e90/); ethereum `0xc83535...4690ff` | ⚠️ Unaudited |
| LybraConfigurator | governance | ethereum | n/a | [`0xf284b9...2b8825`](./contracts/ethereum-1/0xf284b9da245d24a027bdf0565d6fd7e8312b8825/) | ⚠️ Unaudited |
| LybraProxyAdmin | unknown | ethereum | n/a | [`0xa23e44...8cad73`](./contracts/ethereum-1/0xa23e44aea714fbbc08ef28340d78067b9a8cad73/) | ⚠️ Unaudited |
| LybraStETHVault | core_logic | ethereum | n/a | [`0xa980d4...e06f0e`](./contracts/ethereum-1/0xa980d4c0c2e48d305b582aa439a3575e3de06f0e/) | ⚠️ Unaudited |
| MatchToken | token | ethereum | n/a | [`0xe0dcb3...705153`](./contracts/ethereum-1/0xe0dcb3e02798d1c6a9650fe1381015ec34705153/) | ⚠️ Unaudited |
| MatchVesting | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2dfc95...5ae24a`](./contracts/ethereum-1/0x2dfc95b185e810bd508839fb0c274493e95ae24a/); ethereum `0x392f85...725374` | ⚠️ Unaudited |
| MToken | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0af0e8...f88d4c`](./contracts/ethereum-1/0x0af0e83d064f160376303ac67dd9a7971af88d4c/); ethereum `0x0d8981...13c6c2` | ⚠️ Unaudited |
| MTokenStaking | unknown | ethereum | n/a | 2 deployments: ethereum [`0x358038...a91461`](./contracts/ethereum-1/0x3580386f5366614f0f52ed34c9bf66ba50a91461/); ethereum `0x505c52...e13eaa` | ⚠️ Unaudited |
| PeUSDMainnet | unknown | ethereum | n/a | [`0xd585aa...52f247`](./contracts/ethereum-1/0xd585aaafa2b58b1cd75092b51ade9fa4ce52f247/) | ⚠️ Unaudited |
| ProtocolRewardsPool | operational_periphery | ethereum | n/a | [`0xc2966a...2ed89e`](./contracts/ethereum-1/0xc2966a73bbc53f3c99268ed84d245dbe972ed89e/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6098db...2f3703`](./contracts/ethereum-1/0x6098dbda8f0f3c6a3d6e066dd08e9a12962f3703/); ethereum `0x814133...bf0c5d` | ⚠️ Unaudited |
| StakingRewardsV2 | unknown | ethereum | n/a | [`0xec7c6c...c5956d`](./contracts/ethereum-1/0xec7c6cd15d9bd98fc9805e0509e3bb2033c5956d/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0b7043...51a9d3`](./contracts/ethereum-1/0x0b7043d726c8806913fb50d79f6ee9137151a9d3/); ethereum `0x3e4a64...47915e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2fd174...dd3e67`](./contracts/ethereum-1/0x2fd174c6c38c2072e756490dbfa79b0ab8dd3e67/); ethereum `0xd7cb9a...fddeaf` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7a2b1e...e0708e`](./contracts/ethereum-1/0x7a2b1e2f87ceab347ed46defbf15f53faee0708e/); ethereum `0xc1fac7...e4eb6f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x897888...f87bfc`](./contracts/ethereum-1/0x897888ebc122e476415e62bc6a793a7a4af87bfc/); ethereum `0xf861d4...3a0d84` | ⚠️ Unaudited |
| UniswapPairOracle | operational_periphery | ethereum | n/a | [`0xc62686...4647c5`](./contracts/ethereum-1/0xc626867660df1cc6274ce0338e7dfb92474647c5/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | [`0x3a0ef6...01e569`](./contracts/ethereum-1/0x3a0ef60e803aae8e94f741e7f61c7cbe9501e569/) | ⚠️ Unaudited |
| VLMatch | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5ef24e...14a99a`](./contracts/ethereum-1/0x5ef24e853891d91efe6e19b3f438fae66b14a99a/); ethereum `0x9dbbc9...e6a857` | ⚠️ Unaudited |
| VLMatchStaking | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7d0270...41ff14`](./contracts/ethereum-1/0x7d027083e55724a1082b8cdc51ee90781f41ff14/); ethereum `0xe479ef...439072` | ⚠️ Unaudited |
| VLMatchVesting | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4e8834...216544`](./contracts/ethereum-1/0x4e8834ba440a00c01c84afc405d882623a216544/); ethereum `0x5d76c1...b68abe` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (20)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x06689d...bda0e6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x158d48...db30f0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x17d034...62c963` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1e0adc...ea1011` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2543ce...4f5b34` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2953d4...92594d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2b2bf7...6ec148` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x40d028...6047c1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x67b6a8...2d4125` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x85b047...bc8615` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x98c224...27952b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9ac64e...363303` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xab4fca...0e9c26` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc37d83...dd796c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdce765...1e12e0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xea34be...17e4dc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf7366c...1e11a1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfa2cf8...532c00` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfd6bf5...4f2a95` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xff199c...6647db` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Match-Finance_202309281659.pdf](https://beosin.com/audits/Match-Finance_202309281659.pdf) | unknown | Audit | 2023-09 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 43 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13462] Match-Finance_202309281659.pdf

Fork inheritance lineage and inherited audits are included when available.
