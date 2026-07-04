# Agentic Audit Brief: ioTube

## Project Overview

- Project: ioTube (`iotube`)
- Website: [https://iotube.org](https://iotube.org)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:14.110Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: bsc, ethereum, polygon
- Contract surface: 35 unique implementations (52 raw deployments)
- DeFi Llama TVL: $2,285,769.39
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Bridge. Structurally: 25 project-authored contract(s) across 3 chain(s); 6 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 2 common project-authored base contract(s) (erc20burnable, uniqueappendonlyaddresslist). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 97; live-surface contracts included: 52 (30 live, 22 unknown).
- Excluded by liveness: 45 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/13 (0.0%)
- Deployed-live implementations: 13 of 35 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/13
- Verified + Unaudited implementations: 13
- Verified by bytecode match: 0
- Unverified implementations: 22
- Unique implementations: 35
- Raw deployments: 52
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

### ⚠️ Verified + Unaudited (13)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CrosschainERC20 | token | bsc | n/a | 4 deployments: ethereum `0x9f90b4...1d8fe1`; ethereum `0xf79dea...b77e68`; bsc [`0x2aaf50...b60598`](./contracts/bsc-56/0x2aaf50869739e317ab80a57bf87caa35f5b60598/); polygon `0x300211...74d388` | ⚠️ Unaudited |
| CrosschainERC20V2 | token | ethereum | n/a | [`0x9c3af6...6c13b5`](./contracts/ethereum-1/0x9c3af6ffccac8a4ccb31a4b769b84a517c6c13b5/) | ⚠️ Unaudited |
| CrosschainTokenCashierRouter | adapter | bsc | n/a | [`0x2a26fe...48391a`](./contracts/bsc-56/0x2a26fede01bfa03e65cd3c68f421cab83648391a/) | ⚠️ Unaudited |
| CrosschainTokenCashierWithPayloadRouter | adapter | polygon | n/a | 2 deployments: ethereum `0x3030bd...d33305`; polygon [`0x2c43e5...a713a8`](./contracts/polygon-137/0x2c43e50fbdd5fa3ea4e10a5445274b4013a713a8/) | ⚠️ Unaudited |
| MinterPool | core_logic | polygon | n/a | 2 deployments: ethereum `0x964f4f...f63b45`; polygon [`0x4799d5...a5a454`](./contracts/polygon-137/0x4799d57abf5f12ca4ef5375c9dadf8fe7fa5a454/) | ⚠️ Unaudited |
| TokenCashierWithPayload | token | ethereum | n/a | 5 deployments: ethereum [`0x1b9aa8...43bac4`](./contracts/ethereum-1/0x1b9aa865d74b2b77ffdbcf507b56a7b3ab43bac4/); ethereum `0xd57bde...a8d7d4`; bsc `0x78de1e...940204`; polygon `0x6bba6b...21e049`; polygon `0x990b50...18d731` | ⚠️ Unaudited |
| TokenList | token | polygon | n/a | 2 deployments: bsc `0xa6ae93...321ee3`; polygon [`0x14bf34...966277`](./contracts/polygon-137/0x14bf347a597aac623240ae7ac8383ae198966277/) | ⚠️ Unaudited |
| TokenSafe | token | ethereum | n/a | [`0xc2e0f3...7f0d7a`](./contracts/ethereum-1/0xc2e0f31d739cb3153ba5760a203b3bd7c27f0d7a/) | ⚠️ Unaudited |
| TransferValidatorWithPayload | unknown | polygon | n/a | 4 deployments: ethereum `0xe7eba1...0c59d5`; bsc `0x95c6f6...fc794a`; polygon [`0x86b7a9...6c85b2`](./contracts/polygon-137/0x86b7a9470d93e5ebfd1c099e173bce86196c85b2/); polygon `0x87e2d4...890cd6` | ⚠️ Unaudited |
| Unwrapper | unknown | polygon | n/a | 2 deployments: ethereum `0xedec2d...1b4287`; polygon [`0xc3b3fc...304efe`](./contracts/polygon-137/0xc3b3fcc2df7dbcffbc7fb154eb7d41d6e6304efe/) | ⚠️ Unaudited |
| VestingManager | operational_periphery | bsc | n/a | 2 deployments: bsc [`0x31603c...00b001`](./contracts/bsc-56/0x31603c352dcb06e5973afcf7d831824e4900b001/); bsc `0x668b60...3baae0` | ⚠️ Unaudited |
| WitnessList | unknown | polygon | n/a | 2 deployments: bsc `0x811941...a1ee3f`; polygon [`0x1e58ca...292c17`](./contracts/polygon-137/0x1e58ca53d90fe9b37f7f6aeb548b4bc7c6292c17/) | ⚠️ Unaudited |
| XCashier | unknown | polygon | n/a | 2 deployments: ethereum `0xe58997...24006b`; polygon [`0x6ccf30...3fc8db`](./contracts/polygon-137/0x6ccf305a21defff295e616ba5aa423eb563fc8db/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (22)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x0a60b0...9c0b3a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x62ee79...3ebcca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbb7606...54c891` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd81651...53d955` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf7f73a...4cddd4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfbe9a4...c4ce4b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x082020...20f400` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x116404...ad3123` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x52702a...772fde` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x797f14...bba1ca` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7c0bef...08aede` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x80ad2e...6b0627` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd20a13...b9f0f0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0aaea7...71b446` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2f1a0b...c2aed2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x33193d...203f32` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x811941...a1ee3f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8dd2f9...f2ec1f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x964f4f...f63b45` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa0fd74...4e1682` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf72cfb...1a29be` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfbe9a4...c4ce4b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Iotube Audit Report v2-fuzzland.pdf](https://185197389-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-MgvoWpXLOm6Tf5h6ulz%2Fuploads%2Fe4XSu5pssWrgS5FyaqCj%2FIotube%20Audit%20Report%20v2-fuzzland.pdf) | Fuzzland | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

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
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [20590] Iotube Audit Report v2-fuzzland.pdf

Fork inheritance lineage and inherited audits are included when available.
