# Agentic Audit Brief: ApeChain Bridge

⚠️ Lifecycle status: UNKNOWN - TVL dropped 38.2% over 90 days

## Project Overview

- Project: ApeChain Bridge (`apechain-bridge`)
- Website: [https://apechain.com/portal#bridge](https://apechain.com/portal#bridge)
- Lifecycle: unknown (Tier 0, 93.6% below peak)
- Generated: 2026-07-04T14:53:03.929Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-66d5
- Chains: arbitrum, ethereum
- Contract surface: 18 unique implementations (18 raw deployments)
- DeFi Llama TVL: $47,110,900.49
- On-chain TVL (included contracts): $148,164,315.76
- TVL by chain: Ethereum $148,164,315.76

## Project Description

Bridge. Structurally: 10 project-authored contract(s) across 2 chain(s); 1 ERC4626 vault, 4 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 7 functional families. Its contracts share 2 common project-authored base contract(s) (oft4626router, ofterc4626). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 19; live-surface contracts included: 18 (16 live, 2 unknown).
- Excluded by liveness: 1 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/7 (0.0%)
- Deployed-live implementations: 16 of 18 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/16
- Verified + Unaudited implementations: 16
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 18
- Raw deployments: 18
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $148,164,315.76
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of $148,164,315.76 represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (16)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SimpleToken | token | ethereum | n/a | [`0x4d2244...594381`](./contracts/ethereum-1/0x4d224452801aced8b2f0aebe155379bb5d594381/) | ⚠️ Unaudited |
| ApeCoinStakedVoting | unknown | ethereum | n/a | [`0x0187ae...e96e71`](./contracts/ethereum-1/0x0187ae64e905b4fe7dd1568a5642fbef05e96e71/) | ⚠️ Unaudited |
| ApeCoinStaking | unknown | ethereum | n/a | [`0x5954ab...2afbb9`](./contracts/ethereum-1/0x5954ab967bc958940b7eb73ee84797dc8a2afbb9/) | ⚠️ Unaudited |
| ApeETH | unknown | ethereum | n/a | [`0xcf800f...f70438`](./contracts/ethereum-1/0xcf800f4948d16f23333508191b1b1591daf70438/) | ⚠️ Unaudited |
| ApeUSD | unknown | ethereum | n/a | [`0xa2235d...3fbef4`](./contracts/ethereum-1/0xa2235d059f80e176d931ef76b6c51953eb3fbef4/) | ⚠️ Unaudited |
| ERC20Bridge | operational_periphery | arbitrum | n/a | [`0x6b71af...0434b8`](./contracts/arbitrum-42161/0x6b71afb4b7725227ab944c96fe018ab9dc0434b8/) | ⚠️ Unaudited |
| ERC20Inbox | token | arbitrum | n/a | [`0x1b98e4...064d15`](./contracts/arbitrum-42161/0x1b98e4ed82ee1a91a65a38c690e2266364064d15/) | ⚠️ Unaudited |
| ERC20Outbox | token | arbitrum | n/a | [`0x4f405b...05c2af`](./contracts/arbitrum-42161/0x4f405ba65291063d8a524c2bdf55d4e67405c2af/) | ⚠️ Unaudited |
| L1ApeETHRouter | adapter | ethereum | n/a | [`0x6c92ce...aed0a1`](./contracts/ethereum-1/0x6c92ceeb09c83f1018d5bca81d933df3eeaed0a1/) | ⚠️ Unaudited |
| L1Oft4626Router | adapter | ethereum | n/a | [`0xf33d21...59cb00`](./contracts/ethereum-1/0xf33d21137cd0b878f3a18cc60cd74f842c59cb00/) | ⚠️ Unaudited |
| L1OrbitCustomGateway | unknown | arbitrum | n/a | [`0xed543d...5d0ab0`](./contracts/arbitrum-42161/0xed543da6fe33ccee50dc024b78c27959235d0ab0/) | ⚠️ Unaudited |
| L1OrbitERC20Gateway | token | arbitrum | n/a | [`0xb603a1...b8ddb0`](./contracts/arbitrum-42161/0xb603a1c07a11945bfe4855347c88583e31b8ddb0/) | ⚠️ Unaudited |
| L1OrbitGatewayRouter | adapter | arbitrum | n/a | [`0xd57df5...d4a700`](./contracts/arbitrum-42161/0xd57df5c2dc2d60307a74944191f2aa5b7bd4a700/) | ⚠️ Unaudited |
| ProxyAdmin | governance | arbitrum | n/a | [`0x1e5f8f...75b507`](./contracts/arbitrum-42161/0x1e5f8ff72895aea53dd62b590da51e92dc75b507/) | ⚠️ Unaudited |
| RollupAdminLogic | unknown | arbitrum | n/a | [`0x374de5...df259c`](./contracts/arbitrum-42161/0x374de579ae15ad59ed0519aeaf1a23f348df259c/) | ⚠️ Unaudited |
| SequencerInbox | unknown | arbitrum | n/a | [`0xe6a92a...5e4a3c`](./contracts/arbitrum-42161/0xe6a92ae29e24c343ee66a2b3d3ecb783d65e4a3c/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x27e800...47b84d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5b61c1...ac196c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x4d2244...594381`](./contracts/ethereum-1/0x4d224452801aced8b2f0aebe155379bb5d594381/) | SimpleToken | token | $148,164,315.76 | Verified native implementation with $148,164,315.76 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0187ae...e96e71`](./contracts/ethereum-1/0x0187ae64e905b4fe7dd1568a5642fbef05e96e71/) | ApeCoinStakedVoting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5954ab...2afbb9`](./contracts/ethereum-1/0x5954ab967bc958940b7eb73ee84797dc8a2afbb9/) | ApeCoinStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcf800f...f70438`](./contracts/ethereum-1/0xcf800f4948d16f23333508191b1b1591daf70438/) | ApeETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa2235d...3fbef4`](./contracts/ethereum-1/0xa2235d059f80e176d931ef76b6c51953eb3fbef4/) | ApeUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6c92ce...aed0a1`](./contracts/ethereum-1/0x6c92ceeb09c83f1018d5bca81d933df3eeaed0a1/) | L1ApeETHRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf33d21...59cb00`](./contracts/ethereum-1/0xf33d21137cd0b878f3a18cc60cd74f842c59cb00/) | L1Oft4626Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 1 |
| standard_library | 8 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
