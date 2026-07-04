# Agentic Audit Brief: snake-finance

## Project Overview

- Project: snake-finance (`snake-finance`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:54.435Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: sonic
- Contract surface: 33 unique implementations (33 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 27 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 2 common project-authored base contract(s) (operator, contractguard). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 33; live-surface contracts included: 33 (33 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/33 (0.0%)
- Deployed-live implementations: 33 of 33 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/33
- Verified + Unaudited implementations: 33
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 33
- Raw deployments: 33
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (33)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Bridge | unknown | sonic | n/a | [`0x0b3fe0...f2107c`](./contracts/sonic-146/0x0b3fe0c10c050270a9bc34271987989b6cf2107c/) | ⚠️ Unaudited |
| BSNAKE | unknown | sonic | n/a | [`0xc12e66...da5e3d`](./contracts/sonic-146/0xc12e661e0b452964fc85d4b0f4de99fe3eda5e3d/) | ⚠️ Unaudited |
| CircleTokenAdapter | unknown | sonic | n/a | [`0x25c049...e400f4`](./contracts/sonic-146/0x25c049cadb9bb7cea794dba3b58dfdb1ece400f4/) | ⚠️ Unaudited |
| CircleTokenOwner | unknown | sonic | n/a | [`0x11c224...322545`](./contracts/sonic-146/0x11c224fe2be939718eccc560c4887ef05c322545/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | sonic | n/a | [`0x0fdbce...4be3fd`](./contracts/sonic-146/0x0fdbce271bea0d9819034cd09021e0bbe94be3fd/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | sonic | n/a | [`0x134e4c...00ba94`](./contracts/sonic-146/0x134e4c207ad5a13549de1ebf8d43c1f49b00ba94/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | sonic | n/a | [`0x332a62...f9a926`](./contracts/sonic-146/0x332a6211b594fefed5a5d779e51dacd145f9a926/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | sonic | n/a | [`0x4c5683...ad6c6c`](./contracts/sonic-146/0x4c5683a9ede3c8b4fb5ad2e980bbf88652ad6c6c/) | ⚠️ Unaudited |
| GSNAKE | unknown | sonic | n/a | [`0x674a43...896a1b`](./contracts/sonic-146/0x674a430f531847a6f8976a900f8ace765f896a1b/) | ⚠️ Unaudited |
| GSnakeRewardPool | unknown | sonic | n/a | [`0xcfb9fd...ad2ce6`](./contracts/sonic-146/0xcfb9fdcd480bc731833257eb982718cab5ad2ce6/) | ⚠️ Unaudited |
| GSnakeRewardPoolV2 | unknown | sonic | n/a | [`0xfe6915...06bcd2`](./contracts/sonic-146/0xfe6915a0983a304f4d131da635664030da06bcd2/) | ⚠️ Unaudited |
| GSnakeRewardPoolV3 | unknown | sonic | n/a | [`0xe6e0a1...5bbc85`](./contracts/sonic-146/0xe6e0a10eb298f0ac4170f2502cf7b201375bbc85/) | ⚠️ Unaudited |
| Masonry | unknown | sonic | n/a | [`0x54eb20...0280d3`](./contracts/sonic-146/0x54eb20859334c1958eb67f1b5a283b7a100280d3/) | ⚠️ Unaudited |
| MessageBus | unknown | sonic | n/a | [`0x4af339...fa0885`](./contracts/sonic-146/0x4af3397fb17c35ce31bc6e006d60c60136fa0885/) | ⚠️ Unaudited |
| MPTProofVerifier | unknown | sonic | n/a | [`0x6aba65...e3036a`](./contracts/sonic-146/0x6aba65dc38e6ae9ed0d95eb67bf1b524c1e3036a/) | ⚠️ Unaudited |
| MultiSend | unknown | sonic | n/a | [`0xa8cc1c...45c3f4`](./contracts/sonic-146/0xa8cc1c4394dbc60f2e2a494123cfd21b3545c3f4/) | ⚠️ Unaudited |
| Oracle | unknown | sonic | n/a | [`0x19b6e7...109139`](./contracts/sonic-146/0x19b6e78771305876f5fda5b52a3f60820a109139/) | ⚠️ Unaudited |
| OracleV2 | unknown | sonic | n/a | [`0x3bdf5d...8b6e58`](./contracts/sonic-146/0x3bdf5d4d45e57dc7b22f8dfb9c5eff67068b6e58/) | ⚠️ Unaudited |
| OracleV2GSnake | unknown | sonic | n/a | [`0xc6a478...8d8837`](./contracts/sonic-146/0xc6a47895e29284ac769cc9b43a4f39ad768d8837/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | sonic | n/a | [`0x90409d...874be3`](./contracts/sonic-146/0x90409d5b57e77ca394167b781cfc79a2a0874be3/) | ⚠️ Unaudited |
| SNAKE | unknown | sonic | n/a | [`0x3a516e...4bb157`](./contracts/sonic-146/0x3a516e01f82c1e18916ed69a81dd498ef64bb157/) | ⚠️ Unaudited |
| SnakeGenesisRewardPool | unknown | sonic | n/a | [`0x29d076...120950`](./contracts/sonic-146/0x29d0762f7be8409d0ac34a3595af62e8c0120950/) | ⚠️ Unaudited |
| SnakeRedeem | unknown | sonic | n/a | [`0x47f8da...c601f0`](./contracts/sonic-146/0x47f8dae2613f24d9b426b5b9c4d6a3773cc601f0/) | ⚠️ Unaudited |
| StateOracle | unknown | sonic | n/a | [`0x836664...28f2c3`](./contracts/sonic-146/0x836664b0c0cb29b7877bccf94159cc996528f2c3/) | ⚠️ Unaudited |
| TetherTokenAdapter | unknown | sonic | n/a | [`0x188042...53d4e4`](./contracts/sonic-146/0x1880425307124ce875aac3e9eb47b5a87453d4e4/) | ⚠️ Unaudited |
| TimelockController | unknown | sonic | n/a | [`0xae0d90...74aac3`](./contracts/sonic-146/0xae0d907cf556214059f7cf42c4604a63e374aac3/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | sonic | n/a | [`0x604782...a5eaf9`](./contracts/sonic-146/0x6047828dc181963ba44974801ff68e538da5eaf9/) | ⚠️ Unaudited |
| Treasury | unknown | sonic | n/a | [`0x5df9f6...c182ee`](./contracts/sonic-146/0x5df9f693caf6befca5b9d80b31064643d2c182ee/) | ⚠️ Unaudited |
| UpdateManager | unknown | sonic | n/a | [`0x107140...7ee6d4`](./contracts/sonic-146/0x1071405a4736535c545580064039a235827ee6d4/) | ⚠️ Unaudited |
| ValidatorsRegistry | unknown | sonic | n/a | [`0x12727d...d3f447`](./contracts/sonic-146/0x12727d4169a42a9b5e3ecb11a6d2c95553d3f447/) | ⚠️ Unaudited |
| ZapperGSnake | unknown | sonic | n/a | [`0xf2783e...760645`](./contracts/sonic-146/0xf2783ed5bbd6cd622889ba408832262498760645/) | ⚠️ Unaudited |
| ZapperSnake | unknown | sonic | n/a | [`0x108f9f...eea5ae`](./contracts/sonic-146/0x108f9fe7fdf77e868dbbb3931f83f72156eea5ae/) | ⚠️ Unaudited |
| ZapperSnakeNest | unknown | sonic | n/a | [`0x733f13...621316`](./contracts/sonic-146/0x733f13d06fd0479e41106ed5a99666b2ef621316/) | ⚠️ Unaudited |

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

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 33 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
