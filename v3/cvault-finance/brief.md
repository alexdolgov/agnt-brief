# Agentic Audit Brief: cVault Finance

## Project Overview

- Project: cVault Finance (`cvault-finance`)
- Website: [https://cvault.finance/](https://cvault.finance/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:42.336Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: ethereum
- Contract surface: 38 unique implementations (38 raw deployments)
- DeFi Llama TVL: $4,198,797.44
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 38 project-authored contract(s) across 1 chain(s); 4 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 10 common project-authored base contract(s) (baseadminupgradeabilityproxy, baseupgradeabilityproxy, proxy). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 38; live-surface contracts included: 38 (37 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/37 (0.0%)
- Deployed-live implementations: 37 of 38 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/38
- Verified + Unaudited implementations: 38
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 38
- Raw deployments: 38
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

### ⚠️ Verified + Unaudited (38)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AdminUpgradeabilityProxy | unknown | ethereum | n/a | [`0x00a661...f37642`](./contracts/ethereum-1/0x00a66189143279b6db9b77294688f47959f37642/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | ethereum | n/a | [`0x0d1572...373423`](./contracts/ethereum-1/0x0d1572857e5976ae8d4a23c4131350e12e373423/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | ethereum | n/a | [`0x0ee460...ba78e0`](./contracts/ethereum-1/0x0ee460204887d98c297bb431e40b713f63ba78e0/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | ethereum | n/a | [`0x17b8c1...23b669`](./contracts/ethereum-1/0x17b8c1a92b66b1cf3092c5d223cb3a129023b669/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | ethereum | n/a | [`0x220564...c0657d`](./contracts/ethereum-1/0x220564c9bd38aa1240c3507007970d9e30c0657d/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | ethereum | n/a | [`0x2e2a33...118e7a`](./contracts/ethereum-1/0x2e2a33ceca9aef101d679ed058368ac994118e7a/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | ethereum | n/a | [`0x5dca40...314d35`](./contracts/ethereum-1/0x5dca4093bfe88d6fd5511fb78f6a777d47314d35/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | ethereum | n/a | [`0x98107c...3f43f5`](./contracts/ethereum-1/0x98107c16bad83508d23f2933eca63fe5283f43f5/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | ethereum | n/a | [`0xaac50b...a4a76b`](./contracts/ethereum-1/0xaac50b95fbb13956d7c45511f24c3bf9e2a4a76b/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | ethereum | n/a | [`0xbb791b...9d7816`](./contracts/ethereum-1/0xbb791bc6106e4d949863e2ab76fc01ac0a9d7816/) | ⚠️ Unaudited |
| CLending | unknown | ethereum | n/a | [`0x466815...e47f49`](./contracts/ethereum-1/0x4668150f005a53997794dade1ef495329ee47f49/) | ⚠️ Unaudited |
| cLGE | unknown | ethereum | n/a | [`0x558c34...6e2ed5`](./contracts/ethereum-1/0x558c3403ae31a3519b5d701770675726826e2ed5/) | ⚠️ Unaudited |
| CORE | unknown | ethereum | n/a | [`0x62359e...fa23d7`](./contracts/ethereum-1/0x62359ed7505efc61ff1d56fef82158ccaffa23d7/) | ⚠️ Unaudited |
| CORE_RLP_Factory | unknown | ethereum | n/a | [`0x904cf9...4bcc70`](./contracts/ethereum-1/0x904cf9487312f1034814056f1f99be49e74bcc70/) | ⚠️ Unaudited |
| CoreDAO | unknown | ethereum | n/a | [`0xf66cd2...32dd58`](./contracts/ethereum-1/0xf66cd2f8755a21d3c8683a10269f795c0532dd58/) | ⚠️ Unaudited |
| CoreDAOTreasury | unknown | ethereum | n/a | [`0xc3fb0b...3caad0`](./contracts/ethereum-1/0xc3fb0b7a48b56ac5f2cf08ff07ea1878d63caad0/) | ⚠️ Unaudited |
| COREDEX_RLP | unknown | ethereum | n/a | [`0x40874d...3b93cb`](./contracts/ethereum-1/0x40874dd359743f9b230076f2fa2711fcfb3b93cb/) | ⚠️ Unaudited |
| COREGlobals | unknown | ethereum | n/a | [`0x20a387...fa78ae`](./contracts/ethereum-1/0x20a3872597be26562d3873bfda8842ec7efa78ae/) | ⚠️ Unaudited |
| CoreVault | unknown | ethereum | n/a | [`0x16c0a1...276994`](./contracts/ethereum-1/0x16c0a1d938415bb12fda3900e4a8d7967c276994/) | ⚠️ Unaudited |
| DELTA_Deep_Farming_Vault | unknown | ethereum | n/a | [`0x44d59c...fb40a1`](./contracts/ethereum-1/0x44d59c297949b49bc63372c13ce39d7aa9fb40a1/) | ⚠️ Unaudited |
| DELTA_Deep_Vault_Withdrawal | unknown | ethereum | n/a | [`0x251bbe...60a943`](./contracts/ethereum-1/0x251bbe8c7abc2a1ca8d0b25fc1149abe6160a943/) | ⚠️ Unaudited |
| DELTA_Distributor | unknown | ethereum | n/a | [`0xa4079d...6f7cb0`](./contracts/ethereum-1/0xa4079d05467dc8b68f93dff1eb024ab1196f7cb0/) | ⚠️ Unaudited |
| DELTA_Limited_Staking_Window | unknown | ethereum | n/a | [`0xdafce5...e2beab`](./contracts/ethereum-1/0xdafce5670d3f67da9a3a44fe6bc36992e5e2beab/) | ⚠️ Unaudited |
| DELTA_Rebasing_Liquidity_Token | unknown | ethereum | n/a | [`0x1b0b47...a4765a`](./contracts/ethereum-1/0x1b0b4754698aa98cd229f75a463de83242a4765a/) | ⚠️ Unaudited |
| DELTA_Reserve_Vault | unknown | ethereum | n/a | [`0x021af3...a63c34`](./contracts/ethereum-1/0x021af35df295dcfbe769e0e08f22de7252a63c34/) | ⚠️ Unaudited |
| DeltaRouter | unknown | ethereum | n/a | [`0x7b3e8f...6345bc`](./contracts/ethereum-1/0x7b3e8f6f30163d22203d0d86c608ca1a056345bc/) | ⚠️ Unaudited |
| EmptyContract | unknown | ethereum | n/a | [`0xf6f715...918783`](./contracts/ethereum-1/0xf6f71504aa757bd12a1d4c41c0e948226c918783/) | ⚠️ Unaudited |
| FeeApprover | unknown | ethereum | n/a | [`0x1d0db0...186587`](./contracts/ethereum-1/0x1d0db0a5f9f8cf5b69f804d556176c6bc9186587/) | ⚠️ Unaudited |
| Fixer | unknown | ethereum | n/a | [`0x36e6b8...1538fb`](./contracts/ethereum-1/0x36e6b83bfb960f64218b82858ecd89a8351538fb/) | ⚠️ Unaudited |
| IWannaDie | unknown | ethereum | n/a | [`0x1d9a94...089a5b`](./contracts/ethereum-1/0x1d9a94f43a7c6e452a45c0039dde717b8f089a5b/) | ⚠️ Unaudited |
| OVLBalanceHandler | unknown | ethereum | n/a | [`0x3d4eba...612ee1`](./contracts/ethereum-1/0x3d4eba67a81cda00ac6b4aa0ddb72eecdb612ee1/) | ⚠️ Unaudited |
| OVLTransferHandler | unknown | ethereum | n/a | [`0x42716d...53387b`](./contracts/ethereum-1/0x42716df6b1dbda9ac05526f18882cbeb6853387b/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | [`0x55e16b...1246b7`](./contracts/ethereum-1/0x55e16bbd61550572f30580d51abc8fc2e21246b7/) | ⚠️ Unaudited |
| ProxyFactory | unknown | ethereum | n/a | [`0x370f10...d77436`](./contracts/ethereum-1/0x370f101ad006b10f3050ed2621924e72d1d77436/) | ⚠️ Unaudited |
| StableYield | unknown | ethereum | n/a | [`0x3554fc...efbd26`](./contracts/ethereum-1/0x3554fc4998f83967dcab5b2ef858e8e63fefbd26/) | ⚠️ Unaudited |
| TeamShareTimelock | unknown | ethereum | n/a | [`0x0912f4...169c8e`](./contracts/ethereum-1/0x0912f4ecabe8cbc076d37c248942b8721f169c8e/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x6b29a3...9de848`](./contracts/ethereum-1/0x6b29a3f9a1e378a57410dc480c1b19f4f89de848/) | ⚠️ Unaudited |
| Unimplemented | unknown | ethereum | n/a | [`0x0c53b4...7e363c`](./contracts/ethereum-1/0x0c53b4b0a343c70a9e610bde28a269610d7e363c/) | ⚠️ Unaudited |

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
| needs_review | 38 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
