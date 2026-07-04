# Agentic Audit Brief: Velocore

## Project Overview

- Project: Velocore (`velocore`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:07:10.264Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: linea
- Contract surface: 23 unique implementations (23 raw deployments)
- DeFi Llama TVL: $104,432.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 23 project-authored contract(s) across 1 chain(s); 4 ERC20 tokens, 1 ERC1155 multi-token; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 7 common project-authored base contract(s) (vaultstorage, erc165, satellite). Dominant framework: openzeppelin.

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
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-10 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
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
| AdminFacet | unknown | linea | n/a | [`0xaa45ae...6ad2bd`](./contracts/linea-59144/0xaa45ae6c1687eece17ceee098f6efed64e6ad2bd/) | ⚠️ Unaudited |
| ConstantProductLibrary | unknown | linea | n/a | [`0x73fa52...649ef8`](./contracts/linea-59144/0x73fa525c642baaaecb304614fa38614845649ef8/) | ⚠️ Unaudited |
| ConstantProductPoolFactory | unknown | linea | n/a | [`0xad1c0d...3fee7f`](./contracts/linea-59144/0xad1c0da2781e64cbfc9b725ba49e0de0323fee7f/) | ⚠️ Unaudited |
| Deployer | unknown | linea | n/a | [`0xec2150...6c2b57`](./contracts/linea-59144/0xec215066585842184656c24d4a4c0d41986c2b57/) | ⚠️ Unaudited |
| InspectorFacet | unknown | linea | n/a | [`0x71c29c...cb6568`](./contracts/linea-59144/0x71c29c4c7b714fd4190dfb0a2fc599dbb0cb6568/) | ⚠️ Unaudited |
| LinearBribeFactory | unknown | linea | n/a | [`0x6ecc3d...51ee54`](./contracts/linea-59144/0x6ecc3ddf76e42dd2ff681dc926eb885d8651ee54/) | ⚠️ Unaudited |
| Liquidation | unknown | linea | n/a | [`0xbb8a94...ef677a`](./contracts/linea-59144/0xbb8a944aae2c14e119249332be6a7b857cef677a/) | ⚠️ Unaudited |
| LVC | unknown | linea | n/a | [`0x803abe...958269`](./contracts/linea-59144/0x803abee68f41aac0af886f493b81cb3520958269/) | ⚠️ Unaudited |
| NFTHolderFacet | unknown | linea | n/a | [`0xe192e2...3ac93f`](./contracts/linea-59144/0xe192e2a21873eb4ca4ddfc18fd15c8bbc93ac93f/) | ⚠️ Unaudited |
| OverflowICO | unknown | linea | n/a | [`0xa0d433...14715c`](./contracts/linea-59144/0xa0d4334152fdd9a8498ad97a67fbc3389814715c/) | ⚠️ Unaudited |
| ProxyOFT | unknown | linea | n/a | [`0x48d9cd...f90cca`](./contracts/linea-59144/0x48d9cdf4343d95e3b8d8f2bfcfdae9d495f90cca/) | ⚠️ Unaudited |
| RebaseWrapper | unknown | linea | n/a | [`0x3f006b...b84a7b`](./contracts/linea-59144/0x3f006b0493ff32b33be2809367f5f6722cb84a7b/) | ⚠️ Unaudited |
| Refund | unknown | linea | n/a | [`0x20a581...ab5b82`](./contracts/linea-59144/0x20a5816941279f4bfdc1785672d9735fedab5b82/) | ⚠️ Unaudited |
| SimpleAuthorizer | unknown | linea | n/a | [`0x097811...743996`](./contracts/linea-59144/0x0978112d4ea277ad7fbf9f89268deeddeb743996/) | ⚠️ Unaudited |
| SwapAuxillaryFacet | unknown | linea | n/a | [`0x08657a...e54a20`](./contracts/linea-59144/0x08657a62f65d62d0190df72c6ad0fde0b8e54a20/) | ⚠️ Unaudited |
| SwapFacet | unknown | linea | n/a | [`0x1c7e14...0d9f82`](./contracts/linea-59144/0x1c7e145bb3017a9c650242426b9f6eed870d9f82/) | ⚠️ Unaudited |
| SwapHelperFacet | unknown | linea | n/a | [`0xb9a2b1...a96355`](./contracts/linea-59144/0xb9a2b1c9372e5b407ce0dfd2102e6dfe85a96355/) | ⚠️ Unaudited |
| TimelockController | unknown | linea | n/a | [`0xb5a925...7ce1a4`](./contracts/linea-59144/0xb5a925a1f818262137bf6ea4998071d7f17ce1a4/) | ⚠️ Unaudited |
| VC | unknown | linea | n/a | [`0x2c01f9...958129`](./contracts/linea-59144/0x2c01f918f6e02b08b67263e713a1e1a6ea958129/) | ⚠️ Unaudited |
| VeVC | unknown | linea | n/a | [`0x57265c...59651d`](./contracts/linea-59144/0x57265c8d693d352b5d1db71ae7086df39f59651d/) | ⚠️ Unaudited |
| WETHConverter | unknown | linea | n/a | [`0x25cbd1...ebf89c`](./contracts/linea-59144/0x25cbd11558c369b089852baaec9bbb1b66ebf89c/) | ⚠️ Unaudited |
| WombatPool | unknown | linea | n/a | [`0x1d312e...8aaf13`](./contracts/linea-59144/0x1d312eedd57e8d43bcb6369e4b8f02d3c18aaf13/) | ⚠️ Unaudited |
| WombatRegistry | unknown | linea | n/a | [`0x111a6d...559f9e`](./contracts/linea-59144/0x111a6d7f5ddb85776f1b6a6deabe552815559f9e/) | ⚠️ Unaudited |

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
| [Velocore_Zokyo_audit_report_Aug14_2023.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/zokyo-sec/audit-reports/main/Velocore/Velocore_Zokyo_audit_report_Aug14_2023.pdf) | Zokyo | Audit | 2023-08 | stale | Direct | n/a | 0 | n/a |
| [Velocore-Audit-Report.pdf](https://www.scalebit.xyz/reports/Velocore-Audit-Report.pdf) | ScaleBit | Audit | 2023-08 | stale | Direct | n/a | 0 | n/a |
| [hacken.io/audits/velocore/sca-velocore-dex-oct2023](https://hacken.io/audits/velocore/sca-velocore-dex-oct2023) | Hacken | Audit | 2023-10 | stale | Direct | n/a | 0 | n/a |
| [hacken.io/audits/velocore](https://hacken.io/audits/velocore) | Hacken | Audit | 2023-10 | stale | Direct | n/a | 0 | n/a |

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
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21479] Velocore_Zokyo_audit_report_Aug14_2023.pdf
- [21481] Velocore-Audit-Report.pdf
- [21482] hacken.io/audits/velocore/sca-velocore-dex-oct2023
- [21483] hacken.io/audits/velocore

Fork inheritance lineage and inherited audits are included when available.
