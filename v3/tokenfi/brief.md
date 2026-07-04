# Agentic Audit Brief: tokenfi

## Project Overview

- Project: tokenfi (`tokenfi`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:07:01.438Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: bsc, ethereum
- Contract surface: 23 unique implementations (23 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 23 project-authored contract(s) across 2 chain(s); 5 ERC20 tokens, 3 ERC721 NFTs; role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 1 common project-authored base contract(s) (exchangepoolprocessor). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 23; live-surface contracts included: 23 (23 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/23 (0.0%)
- Deployed-live implementations: 23 of 23 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/23
- Verified + Unaudited implementations: 23
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 23
- Raw deployments: 23
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

### ⚠️ Verified + Unaudited (23)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ConstantMultiplier | unknown | ethereum | n/a | [`0xb254cc...b90721`](./contracts/ethereum-1/0xb254cc6c1d178c2de8182cede6113a986bb90721/) | ⚠️ Unaudited |
| DynamicTaxHandler | unknown | bsc | n/a | [`0x26d87b...39f6b3`](./contracts/bsc-56/0x26d87b2ed8ff41402b9e5b8edbc0e5a18139f6b3/) | ⚠️ Unaudited |
| ExponentialTaxHandler | unknown | ethereum | n/a | [`0xa4ffcc...d87dbe`](./contracts/ethereum-1/0xa4ffccd34a129a2554db737b518b269b81d87dbe/) | ⚠️ Unaudited |
| FLOKI | unknown | bsc | n/a | [`0x2b3f34...ddd6e4`](./contracts/bsc-56/0x2b3f34e9d4b127797ce6244ea341a83733ddd6e4/) | ⚠️ Unaudited |
| FlokiInuNFTReward | unknown | ethereum | n/a | [`0x064f95...cd6307`](./contracts/ethereum-1/0x064f9547a78bd5ba35a7aeb2221de69b86cd6307/) | ⚠️ Unaudited |
| FlokiInuNFTRewardPickUp | unknown | ethereum | n/a | [`0x1b231f...e5db16`](./contracts/ethereum-1/0x1b231f8e6f16ea0b5ca0d2f39eb595bec3e5db16/) | ⚠️ Unaudited |
| FlokiInuNFTRubyRewardPickUp | unknown | ethereum | n/a | [`0x1b8234...2dc741`](./contracts/ethereum-1/0x1b823442253556b4cb8d2586d8dc0fc01c2dc741/) | ⚠️ Unaudited |
| FlokiNew | unknown | bsc | n/a | [`0x4554ae...43c770`](./contracts/bsc-56/0x4554aecf34805e16ee44df06de7611724f43c770/) | ⚠️ Unaudited |
| FlokiRewardToken | unknown | ethereum | n/a | [`0xf7756d...fc099c`](./contracts/ethereum-1/0xf7756db83625e78d693ca90749e2d0869dfc099c/) | ⚠️ Unaudited |
| FlokiStakingPool | unknown | ethereum | n/a | [`0xb8d247...f4ee43`](./contracts/ethereum-1/0xb8d2471e35ee033db509e0456c8efc4135f4ee43/) | ⚠️ Unaudited |
| Flokitar | unknown | ethereum | n/a | [`0x23051f...8c83b9`](./contracts/ethereum-1/0x23051fe0eb93fabe7b314fd56a95f395058c83b9/) | ⚠️ Unaudited |
| GemstoneNFT | unknown | ethereum | n/a | [`0x039894...55ec00`](./contracts/ethereum-1/0x0398947346144d39e1983c3d9a63248a2655ec00/) | ⚠️ Unaudited |
| MockFlokiToken | unknown | bsc | n/a | [`0xf7756d...fc099c`](./contracts/bsc-56/0xf7756db83625e78d693ca90749e2d0869dfc099c/) | ⚠️ Unaudited |
| PenaltyFee | unknown | ethereum | n/a | [`0x476129...21e30d`](./contracts/ethereum-1/0x4761295cb20bbf40952b3239bdc4fcd14021e30d/) | ⚠️ Unaudited |
| Receiver | unknown | bsc | n/a | [`0x4fc4df...c4ac2b`](./contracts/bsc-56/0x4fc4df83ee1b76ec1c47e3644238e82e5bc4ac2b/) | ⚠️ Unaudited |
| SimpleReceiver | unknown | bsc | n/a | [`0x8e1beb...2e45d6`](./contracts/bsc-56/0x8e1beb70a00b87b3d0199cc5fdf80e40482e45d6/) | ⚠️ Unaudited |
| SpecialTaxHandler | unknown | bsc | n/a | [`0x3b75aa...d894ae`](./contracts/bsc-56/0x3b75aa83bba768629ddc7578b389da8de2d894ae/) | ⚠️ Unaudited |
| StaticTaxHandler | unknown | ethereum | n/a | [`0x12e39c...2df74c`](./contracts/ethereum-1/0x12e39cd22501eec967663b9b58946d02da2df74c/) | ⚠️ Unaudited |
| StaticTaxHandlerWithMaximum | unknown | ethereum | n/a | [`0x162e54...033bf7`](./contracts/ethereum-1/0x162e54eb85dd85c3f1d27918d3fa950af1033bf7/) | ⚠️ Unaudited |
| T1 | unknown | ethereum | n/a | [`0x4507ce...e2b528`](./contracts/ethereum-1/0x4507cef57c46789ef8d1a19ea45f4216bae2b528/) | ⚠️ Unaudited |
| TreasuryHandlerAlpha | unknown | ethereum | n/a | [`0x35e6e4...024c24`](./contracts/ethereum-1/0x35e6e44f97e3a112dbabf9eb47d6f84224024c24/) | ⚠️ Unaudited |
| ZeroTaxHandler | unknown | ethereum | n/a | [`0x4491c4...19bd56`](./contracts/ethereum-1/0x4491c4c1d1bf636057eab66cd986da08f619bd56/) | ⚠️ Unaudited |
| ZeroTreasuryHandler | unknown | ethereum | n/a | [`0x2bd06f...28b0e2`](./contracts/ethereum-1/0x2bd06f15bcb6ff028befc4a4dd21ed0f1028b0e2/) | ⚠️ Unaudited |

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
| [skynet.certik.com/projects/tokenfi](https://skynet.certik.com/projects/tokenfi) | CertiK | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 23 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21056] skynet.certik.com/projects/tokenfi

Fork inheritance lineage and inherited audits are included when available.
