# Agentic Audit Brief: deq

## Project Overview

- Project: deq (`deq`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:42.766Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: base, ethereum
- Contract surface: 8 unique implementations (8 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 8 project-authored contract(s) across 2 chain(s); 1 ERC721 NFT; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 4 common project-authored base contract(s) (proxy, contextupgradeable, erc165upgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 8; live-surface contracts included: 8 (8 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/8 (0.0%)
- Deployed-live implementations: 8 of 8 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/8
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 8
- Raw deployments: 8
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AvailDepository | unknown | ethereum | n/a | [`0x117802...7319ee`](./contracts/ethereum-1/0x11780211a1aab0059bca3e8e201cfe08287319ee/) | ⚠️ Unaudited |
| AvailWithdrawalHelper | unknown | ethereum | n/a | [`0x260353...637f16`](./contracts/ethereum-1/0x2603537d10c7bd27ee75427d222ddfc51c637f16/) | ⚠️ Unaudited |
| DeqRouter | unknown | ethereum | n/a | [`0x0fd135...ffbc1b`](./contracts/ethereum-1/0x0fd135874508ca55f5868146576ce2b402ffbc1b/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | base | n/a | [`0x2c1812...3f5583`](./contracts/base-8453/0x2c1812d91086cd5538f408ed47c813780a3f5583/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | base | n/a | [`0x931c9e...d1ad2a`](./contracts/base-8453/0x931c9e3a44a48f5b80d7b4abb25e28ab12d1ad2a/) | ⚠️ Unaudited |
| GnosisSafe | unknown | ethereum | n/a | [`0x5f5a16...d7d4b7`](./contracts/ethereum-1/0x5f5a162488e23664b674924d71fdca6c30d7d4b7/) | ⚠️ Unaudited |
| StakedAvailWormhole | unknown | base | n/a | [`0x74cb66...611783`](./contracts/base-8453/0x74cb668d23e6e54524e2e1e4d1c392f5fd611783/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x0a5567...6a6705`](./contracts/ethereum-1/0x0a5567b11b565970eea4d513a892d3d0e46a6705/) | ⚠️ Unaudited |

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
| [deq.fi-audit-may24(Public).pdf](https://github.com/Hexens/Smart-Contract-Review-Public-Reports/blob/main/deq.fi-audit-may24(Public).pdf) | Hexens | Audit | 2024-05 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 8 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [20680] deq.fi-audit-may24(Public).pdf

Fork inheritance lineage and inherited audits are included when available.
