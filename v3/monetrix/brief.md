# Agentic Audit Brief: Monetrix

## Project Overview

- Project: Monetrix (`monetrix`)
- Website: [https://www.monetrix.xyz/](https://www.monetrix.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:29.682Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: hyperliquid
- Contract surface: 15 unique implementations (15 raw deployments)
- DeFi Llama TVL: $2,519,013.12
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Basis Trading. Structurally: 15 project-authored contract(s) across 1 chain(s); 1 ERC20 token; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin-upgradeable.

### Architecture

The protocol comprises 2 functional families. Its contracts share 4 common project-authored base contract(s) (proxy, contextupgradeable, pausableupgradeable). Dominant framework: openzeppelin-upgradeable.

## Contract Surface Quality

- Indexed contracts: 15; live-surface contracts included: 15 (15 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/15 (0.0%)
- Deployed-live implementations: 15 of 15 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/15
- Verified + Unaudited implementations: 15
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 15
- Raw deployments: 15
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-04 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (15)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ERC1967Proxy | unknown | hyperliquid | n/a | [`0x01313e...734cee`](./contracts/hyperliquid-999/0x01313e95c0dd7fd4ad67edc39823b079f6734cee/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | hyperliquid | n/a | [`0x12e4f1...91c58c`](./contracts/hyperliquid-999/0x12e4f1a26dc008e68c0e77a60881680eda91c58c/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | hyperliquid | n/a | [`0x301024...586595`](./contracts/hyperliquid-999/0x301024e319191495146ab3627fe3fc1ffe586595/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | hyperliquid | n/a | [`0x4d9f48...7c2106`](./contracts/hyperliquid-999/0x4d9f48f3055fa354254b1ca82a0badb88f7c2106/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | hyperliquid | n/a | [`0x5f1ab6...e63ddf`](./contracts/hyperliquid-999/0x5f1ab62c3159ebe04aff14beef84b0b60de63ddf/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | hyperliquid | n/a | [`0x7592b9...9c4132`](./contracts/hyperliquid-999/0x7592b9fc42e000783d491739c77ccb86f19c4132/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | hyperliquid | n/a | [`0xaa556b...7b8f32`](./contracts/hyperliquid-999/0xaa556b9755c249f9b6b98f89dd20c5d4997b8f32/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | hyperliquid | n/a | [`0xaace6a...ce329d`](./contracts/hyperliquid-999/0xaace6a69c27df3f92763f688606335cbf3ce329d/) | ⚠️ Unaudited |
| MonetrixAccountant | unknown | hyperliquid | n/a | [`0x5ce5e4...f1a8e2`](./contracts/hyperliquid-999/0x5ce5e40522e8cb42d7a1ae2dadab808d31f1a8e2/) | ⚠️ Unaudited |
| MonetrixGenesisVault | unknown | hyperliquid | n/a | [`0xc50a1d...c9cd63`](./contracts/hyperliquid-999/0xc50a1dd2866a822c81bd0aa00b638c4bddc9cd63/) | ⚠️ Unaudited |
| MonetrixVault | unknown | hyperliquid | n/a | [`0x08f69c...2c77f2`](./contracts/hyperliquid-999/0x08f69c88c47ef1c5274fc11bfe350561252c77f2/) | ⚠️ Unaudited |
| RedeemEscrow | unknown | hyperliquid | n/a | [`0x17100f...6d978f`](./contracts/hyperliquid-999/0x17100f8cafd727550bb32e6f1496d463da6d978f/) | ⚠️ Unaudited |
| sUSDMEscrow | unknown | hyperliquid | n/a | [`0xd81600...4e3707`](./contracts/hyperliquid-999/0xd81600838ab778d49038df9c3b78cdca244e3707/) | ⚠️ Unaudited |
| TimelockController | unknown | hyperliquid | n/a | [`0x6f00b0...a329bf`](./contracts/hyperliquid-999/0x6f00b0fbc805a8319b4837bb152f4fe700a329bf/) | ⚠️ Unaudited |
| USDM | unknown | hyperliquid | n/a | [`0x05faf9...d586df`](./contracts/hyperliquid-999/0x05faf9cfa7143804e7fb0db423fde8330cd586df/) | ⚠️ Unaudited |

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
| [audits-and-contracts.md](https://doc.monetrix.xyz/risk-and-security/audits-and-contracts.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [code4rena.com/audits/2026-04-monetrix](https://code4rena.com/audits/2026-04-monetrix) | Code4rena | Contest | 2026-04 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 15 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [20838] audits-and-contracts.md
- [20839] code4rena.com/audits/2026-04-monetrix

Fork inheritance lineage and inherited audits are included when available.
