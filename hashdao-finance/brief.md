# Agentic Audit Brief: HashDAO Finance

## Project Overview

- Project: HashDAO Finance (`hashdao-finance`)
- Website: [https://www.hashdao.finance](https://www.hashdao.finance)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:21.296Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: arbitrum, optimism
- Contract surface: 40 unique implementations (44 raw deployments)
- DeFi Llama TVL: $1,236,912.77
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Derivatives. Structurally: 23 project-authored contract(s) across 2 chain(s); 4 ERC20 tokens, 1 Chainlink feed; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 8 common project-authored base contract(s) (erc20permit, eip712, ownableupgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 124; live-surface contracts included: 44 (10 live, 34 unknown).
- Excluded by liveness: 80 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/2 (50.0%)
- Deployed-live implementations: 7 of 40 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 3/7
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 33
- Unique implementations: 40
- Raw deployments: 44
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 3 | 42.9% | 2023-04 |
| SolidProof | Tier 2 | 1 | 14.3% | n/a |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AdminUpgradeabilityProxy | proxy | optimism | n/a | 2 deployments: optimism [`0x5556af10c1966ebf0b131295a2af13deec771bce`](./contracts/optimism-10/0x5556af10c1966ebf0b131295a2af13deec771bce/); optimism `0x584a4fc89f8bba3e836ad14a205fb022de07fca8` | ✅ Audited |
| AdminUpgradeabilityProxy | proxy | arbitrum | n/a | 2 deployments: arbitrum [`0x019622fb05dd0c80751798949e795ff5d5e3a61f`](./contracts/arbitrum-42161/0x019622fb05dd0c80751798949e795ff5d5e3a61f/); arbitrum `0xcd7a1b22d239a4395dd8ab8f5dbcdcee2132dbc4` | ✅ Audited |
| Token | token | arbitrum | n/a | [`0x2e80259c9071b6176205ff5f5eb6f7ec8361b93f`](./contracts/arbitrum-42161/0x2e80259c9071b6176205ff5f5eb6f7ec8361b93f/) | ✅ Audited |

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GnosisSafeL2 | governance | arbitrum | n/a | [`0xaa1919fd3b6f6e11e2c7f22147c48af2b0e4ff03`](./contracts/arbitrum-42161/0xaa1919fd3b6f6e11e2c7f22147c48af2b0e4ff03/) | ⚠️ Unaudited |
| LPToken | token | arbitrum | n/a | 2 deployments: arbitrum [`0x7d5332df67aec9cb1df73ba8115e6a9211cf021f`](./contracts/arbitrum-42161/0x7d5332df67aec9cb1df73ba8115e6a9211cf021f/); arbitrum `0x947af1d7926de7edf3bd5411ce5f79bd09e551cd` | ⚠️ Unaudited |
| ProxyAdmin | governance | optimism | n/a | [`0xa0172947b886eedc8d8b2177d6213083fd750f11`](./contracts/optimism-10/0xa0172947b886eedc8d8b2177d6213083fd750f11/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | arbitrum | n/a | [`0x8dc6efd57a13b7ba3ff7824c9708db24d3190703`](./contracts/arbitrum-42161/0x8dc6efd57a13b7ba3ff7824c9708db24d3190703/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (33)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proxy (impl: 0x989cc0e3726feae27bbea934bb040214ea953476) | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x597f5aa40d380acecc4906778180748ebba818f2`; arbitrum `0x989cc0e3726feae27bbea934bb040214ea953476` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x2b9c8b76176957a0448279da9b8cdebe94becd19` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x2c75050d7d380f07e3a9bd77bb43d304e77701c4` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x303cc96d589df4d4343cd2391d10174ff58cf6d6` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x375729535a9c4d6d16e36f0466d1a27d05d33700` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x52d510b6c66b10eed524b2ff81732412a55048e1` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x60d755ba869552662fe2c2c47b917605e6ed3cbe` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x722b763b2e4f73b62d84a37edad4a16a950984e1` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x92aee27dcc5373423d13028b1b2bf4ef61e6a39d` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x95e92446d1339c1eb8f1de672cc40d3b6faec878` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x963a0a97726ab86091a3f189e2ab07e2661be81f` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x98293ef4b96c513b939786e9e7f6686a63bd4972` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xa18be61f04b56d9234603ffa7056f174c951561b` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xcd00becadbb0fa418e5858314a289bf20f3a9b2e` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xd6c52a5b720d81ed9bab0df34f1e00f7d2c2345b` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xdf40b7f0caf2210279e94033e7cb2da5fdc2a2b2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0f48ac8272edd41e5f21a85ffea0285ff0d28ee5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x172ef9fa593a55f01353366462523550762a3002` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x278fe1be6202fa12a4c18062a69bcfb42ad1f398` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x286fa4f931b46fe6c404614d3eabae5455fd8b87` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x349c06e74dc19dc5d8e20a32449d59363a76c6dc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5556af10c1966ebf0b131295a2af13deec771bce` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5905e0eca5f93d8359621feb7c2932d384141c76` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7c8210d95a07ff4e7799b7f4fa089bb7a2b64f84` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8f5be32d7e97242d3c0cda9f7c26d447c21b0330` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x97d4b001bd708a0da6d85e747795b59475273d95` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa0a60ee81ca507ccb0acb200d4ab65b36d070e18` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb37c07087769186970e7c52386d7aea7927e1a3a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb6a06dfee703a146d42f7fd8a0dfc70338bd917f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe80cdce96bf4825b32f08e9360a0187e71f1ed51` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xec161cab9fd373afa422e44cbc9e5e038abeacc6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfdacc1aab258dfc598a7859b09b4fa29d354e7a0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xff0ebb477ef20f3feb921b4513d4dc37b73a0fe8` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [HashDAO.pdf](https://github.com/TechRate/Smart-Contract-Audits/blob/main/April_2023/HashDAO.pdf) | unknown | Audit | 2023-04 | stale | Direct | contract_name | 2 | n/a |
| [app.solidproof.io/projects/hashdao](https://app.solidproof.io/projects/hashdao) | unknown | Audit | n/a | unknown | Direct | contract_name | 1 | n/a |
| [app.solidproof.io/projects/hashdao](https://app.solidproof.io/projects/hashdao?audit=dc54b5c8-2954-4939-a653-7272083fe7b3) | SolidProof | Audit | n/a | unknown | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x7d5332df67aec9cb1df73ba8115e6a9211cf021f`](./contracts/arbitrum-42161/0x7d5332df67aec9cb1df73ba8115e6a9211cf021f/) | LPToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 1 |
| standard_library | 4 |
| needs_review | 33 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=4

Fork inheritance lineage and inherited audits are included when available.
