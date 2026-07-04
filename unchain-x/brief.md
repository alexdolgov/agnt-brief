# Agentic Audit Brief: Unchain X

## Project Overview

- Project: Unchain X (`unchain-x`)
- Website: [https://unchainx.io](https://unchainx.io)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:02.779Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-4c3e
- Chains: bsc
- Contract surface: 36 unique implementations (40 raw deployments)
- DeFi Llama TVL: $978,845.89
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 15 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens, 1 ERC721 NFT; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 8 functional families. Its contracts share 8 common project-authored base contract(s) (peripheryimmutablestate, transferhandler, multicall). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 46; live-surface contracts included: 40 (16 live, 24 unknown).
- Excluded by liveness: 6 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/12 (8.3%)
- Deployed-live implementations: 12 of 36 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/12
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 24
- Unique implementations: 36
- Raw deployments: 40
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-09 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 1 | 8.3% | 2024-09 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UNXToken | token | bsc | n/a | [`0x4f0572...bdea6f`](./contracts/bsc-56/0x4f0572ca0bf96f5ae17b7062d97cea3f35bdea6f/) | ✅ Audited |

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GenesisX | unknown | bsc | n/a | [`0xba2d44...60ecc6`](./contracts/bsc-56/0xba2d44ebf3a6a2543c7825e94f673bde0960ecc6/) | ⚠️ Unaudited |
| HalvingProtocol | unknown | bsc | n/a | [`0xa6820d...c05db8`](./contracts/bsc-56/0xa6820deaeb44c70bf42dbe0b561d399297c05db8/) | ⚠️ Unaudited |
| LaunchpadStakingV2 | unknown | bsc | n/a | 5 deployments: bsc [`0x057d5b...0fa015`](./contracts/bsc-56/0x057d5bf977ce40a7c1c63b1b58609120350fa015/); bsc `0x0ea8f9...ce0550`; bsc `0x8d2f48...0ae245`; bsc `0xd7d98c...1a1240`; bsc `0xf28961...f911e8` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | bsc | n/a | [`0x854ec7...2703de`](./contracts/bsc-56/0x854ec70b78933fab3f95e5bc95d7af72b62703de/) | ⚠️ Unaudited |
| QuoterV2 | periphery | bsc | n/a | [`0x03dd4e...0811f5`](./contracts/bsc-56/0x03dd4ebe7120d05d7cf75cbdf7a5f375e40811f5/) | ⚠️ Unaudited |
| SwapRouter | adapter | bsc | n/a | [`0xc9d96c...061f7f`](./contracts/bsc-56/0xc9d96c797fb1ae135d56ccb96eae7f70be061f7f/) | ⚠️ Unaudited |
| UNXFaucet | unknown | bsc | n/a | [`0xdc0b82...28a879`](./contracts/bsc-56/0xdc0b82969e27d7d44be0bcf8a3839ad7eb28a879/) | ⚠️ Unaudited |
| UNXwapV3Factory | registry | bsc | n/a | [`0x82fa7b...d8d40c`](./contracts/bsc-56/0x82fa7b2ce2a76c7888a9d3b0a81e0b2ecfd8d40c/) | ⚠️ Unaudited |
| UNXwapV3LmFactory | registry | bsc | n/a | [`0xb4339c...832aed`](./contracts/bsc-56/0xb4339c24f4705bf3e3049ebcfb2ba2ae43832aed/) | ⚠️ Unaudited |
| UNXwapV3Manager | governance | bsc | n/a | [`0xb50024...a38d18`](./contracts/bsc-56/0xb50024ccb6fdeeb7a1bfb186184936a78ea38d18/) | ⚠️ Unaudited |
| XPlosion | unknown | bsc | n/a | [`0x9e309f...88d650`](./contracts/bsc-56/0x9e309f126882f467f28b67d5cc6b746a4988d650/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (24)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x011d89...c3ce8f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0371a8...d77481` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x04e395...d93edf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x25f544...ce78e5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x267625...d0a263` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2cd479...47041b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x39ad71...f71671` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3ff22e...500e9c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x46c18f...d4fe8a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x47059c...53c56a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5c403a...b82bc4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x621f23...a11f65` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x649f0b...0b034b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x64ad55...c27f96` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x94b1b8...f655ad` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x95b09e...13e7d4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa060db...466689` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xafb510...b56753` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb55590...1b9c8f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbc696b...e304de` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcc0073...6e6c17` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd4c5ec...31a7e6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdf8a07...342889` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe31f7f...8ae354` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [skynet.certik.com/projects/unchain-x](https://skynet.certik.com/projects/unchain-x) | CertiK | Audit | 2024-09 | aging | Direct | contract_name | 1 | n/a |
| [PeckShield-Audit-Report-UnchainX-v1.0.pdf](https://github.com/UNCHAIN-X-Labs/launchpad-staking-contract/blob/main/audit/PeckShield-Audit-Report-UnchainX-v1.0.pdf) | PeckShield | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0xba2d44...60ecc6`](./contracts/bsc-56/0xba2d44ebf3a6a2543c7825e94f673bde0960ecc6/) | GenesisX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa6820d...c05db8`](./contracts/bsc-56/0xa6820deaeb44c70bf42dbe0b561d399297c05db8/) | HalvingProtocol | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x057d5b...0fa015`](./contracts/bsc-56/0x057d5bf977ce40a7c1c63b1b58609120350fa015/) | LaunchpadStakingV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x854ec7...2703de`](./contracts/bsc-56/0x854ec70b78933fab3f95e5bc95d7af72b62703de/) | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x03dd4e...0811f5`](./contracts/bsc-56/0x03dd4ebe7120d05d7cf75cbdf7a5f375e40811f5/) | QuoterV2 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc9d96c...061f7f`](./contracts/bsc-56/0xc9d96c797fb1ae135d56ccb96eae7f70be061f7f/) | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xdc0b82...28a879`](./contracts/bsc-56/0xdc0b82969e27d7d44be0bcf8a3839ad7eb28a879/) | UNXFaucet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x82fa7b...d8d40c`](./contracts/bsc-56/0x82fa7b2ce2a76c7888a9d3b0a81e0b2ecfd8d40c/) | UNXwapV3Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xb4339c...832aed`](./contracts/bsc-56/0xb4339c24f4705bf3e3049ebcfb2ba2ae43832aed/) | UNXwapV3LmFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xb50024...a38d18`](./contracts/bsc-56/0xb50024ccb6fdeeb7a1bfb186184936a78ea38d18/) | UNXwapV3Manager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x9e309f...88d650`](./contracts/bsc-56/0x9e309f126882f467f28b67d5cc6b746a4988d650/) | XPlosion | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 12 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 24 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=1

Zero-match audit list:

- [3136] PeckShield-Audit-Report-UnchainX-v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
