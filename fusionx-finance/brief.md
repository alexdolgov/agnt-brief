# Agentic Audit Brief: fusionx-finance

## Project Overview

- Project: fusionx-finance (`fusionx-finance`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:17.251Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: mantle
- Contract surface: 50 unique implementations (50 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 45 project-authored contract(s) across 1 chain(s); 12 ERC20 tokens, 1 ERC721 NFT; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 10 common project-authored base contract(s) (multicall, blocktimestamp, peripheryimmutablestate). Dominant framework: openzeppelin.

## Fork Lineage

This project reuses audited code from **Hinkal** (`hinkal`) in the Hypervisor subsystem.
8 audits inherited from `hinkal`, scoped to that subsystem.

Total inherited audits: 8. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 50; live-surface contracts included: 50 (50 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/44 (2.3%)
- Deployed-live implementations: 50 of 50 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/50
- Verified + Unaudited implementations: 49
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 50
- Raw deployments: 50
- Audits discovered: 8 (0 direct, 8 inherited from forked code)
- Scoreable audits (matched contracts): 8
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 8 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 2.3% (Immunefi)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Immunefi | Tier 1 | 1 | 2.0% | n/a |
| Quantstamp | Tier 2 | 1 | 2.0% | n/a |
| unknown | Tier 2 | 1 | 2.0% | n/a |
| yAudit | Tier 2 | 1 | 2.0% | n/a |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Hypervisor | unknown | mantle | n/a | [`0x1ee3ae551188661553882fdc75f8f62eaa6726ad`](./contracts/mantle-5000/0x1ee3ae551188661553882fdc75f8f62eaa6726ad/) | ✅ Audited |

### ⚠️ Verified + Unaudited (49)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccessRegistry | unknown | mantle | n/a | [`0x0827368c02b509362011120ced5e4c1abde54323`](./contracts/mantle-5000/0x0827368c02b509362011120ced5e4c1abde54323/) | ⚠️ Unaudited |
| Admin | unknown | mantle | n/a | [`0x258d485a17e1ba65ff6367d0e8b8acc70ab200f2`](./contracts/mantle-5000/0x258d485a17e1ba65ff6367d0e8b8acc70ab200f2/) | ⚠️ Unaudited |
| Airdrop | unknown | mantle | n/a | [`0x8551d2141a755ed8ca3a9e4bd9977dadf300fdb2`](./contracts/mantle-5000/0x8551d2141a755ed8ca3a9e4bd9977dadf300fdb2/) | ⚠️ Unaudited |
| Clearing | unknown | mantle | n/a | [`0x1e86a593e55215957c4755f1be19a229af3286f6`](./contracts/mantle-5000/0x1e86a593e55215957c4755f1be19a229af3286f6/) | ⚠️ Unaudited |
| ClearingV2 | unknown | mantle | n/a | [`0x57f32fc5aeec2a1c6539291ae0088b203eb43bbb`](./contracts/mantle-5000/0x57f32fc5aeec2a1c6539291ae0088b203eb43bbb/) | ⚠️ Unaudited |
| CleopatraHypervisor | unknown | mantle | n/a | [`0x0180c95ef11eafc12fcaadc9c2c5af08fe9f7efa`](./contracts/mantle-5000/0x0180c95ef11eafc12fcaadc9c2c5af08fe9f7efa/) | ⚠️ Unaudited |
| CoinToken | unknown | mantle | n/a | [`0x3e65ac1dd4938e02301c4869d3043903f5deb474`](./contracts/mantle-5000/0x3e65ac1dd4938e02301c4869d3043903f5deb474/) | ⚠️ Unaudited |
| ElkDexInterfaceMulticall | unknown | mantle | n/a | [`0x44fe4584bb1adb0a8c21479b7b975daa8f2952d9`](./contracts/mantle-5000/0x44fe4584bb1adb0a8c21479b7b975daa8f2952d9/) | ⚠️ Unaudited |
| FLOKI | unknown | mantle | n/a | [`0x6efff76acf1698a6a215eca7d632991678ec673b`](./contracts/mantle-5000/0x6efff76acf1698a6a215eca7d632991678ec673b/) | ⚠️ Unaudited |
| FusionXFactory | unknown | mantle | n/a | [`0xe371352b9d8971b0ae464a05aaea623a012ad7e2`](./contracts/mantle-5000/0xe371352b9d8971b0ae464a05aaea623a012ad7e2/) | ⚠️ Unaudited |
| FusionXRouter | unknown | mantle | n/a | [`0x35e1e34ee20ee5c63edd1ecc33fc3bbc93357a14`](./contracts/mantle-5000/0x35e1e34ee20ee5c63edd1ecc33fc3bbc93357a14/) | ⚠️ Unaudited |
| FusionXV3Factory | unknown | mantle | n/a | [`0x0c69e6b21cd183e2a268649178a66d53d738e760`](./contracts/mantle-5000/0x0c69e6b21cd183e2a268649178a66d53d738e760/) | ⚠️ Unaudited |
| FusionXV3PoolDeployer | unknown | mantle | n/a | [`0x5d06ce554fe4ce7a70c2daa992a4b167d86e4de2`](./contracts/mantle-5000/0x5d06ce554fe4ce7a70c2daa992a4b167d86e4de2/) | ⚠️ Unaudited |
| Gauge | unknown | mantle | n/a | [`0x39f5fb9076fa9a78625d3ebc401a7906711f847c`](./contracts/mantle-5000/0x39f5fb9076fa9a78625d3ebc401a7906711f847c/) | ⚠️ Unaudited |
| HypeRegistry | unknown | mantle | n/a | [`0x683292172e2175bd08e3927a5e72fc301b161300`](./contracts/mantle-5000/0x683292172e2175bd08e3927a5e72fc301b161300/) | ⚠️ Unaudited |
| Launchpad | unknown | mantle | n/a | [`0x634aec95db17bbede58c9cb2bbd9fe6c4806c617`](./contracts/mantle-5000/0x634aec95db17bbede58c9cb2bbd9fe6c4806c617/) | ⚠️ Unaudited |
| LaunchpadToken | unknown | mantle | n/a | [`0x091adb85d5dbef76b91fa0be416d53aa9232c521`](./contracts/mantle-5000/0x091adb85d5dbef76b91fa0be416d53aa9232c521/) | ⚠️ Unaudited |
| LBPMasterChefV3 | unknown | mantle | n/a | [`0x691cf60166e1cdbfbd8ce6b458985c1d4eae4574`](./contracts/mantle-5000/0x691cf60166e1cdbfbd8ce6b458985c1d4eae4574/) | ⚠️ Unaudited |
| LpHolder | unknown | mantle | n/a | [`0x2a6992f8c659ceb4294d185ce10ed1b5bde7fd9c`](./contracts/mantle-5000/0x2a6992f8c659ceb4294d185ce10ed1b5bde7fd9c/) | ⚠️ Unaudited |
| LUSDStablecoin | unknown | mantle | n/a | [`0xf93a85d53e4af0d62bdf3a83ccfc1ecf3eaf9f32`](./contracts/mantle-5000/0xf93a85d53e4af0d62bdf3a83ccfc1ecf3eaf9f32/) | ⚠️ Unaudited |
| METHL2 | unknown | mantle | n/a | [`0xeb0c390b1fb2b63d5ed257b822a1cbbff87956ce`](./contracts/mantle-5000/0xeb0c390b1fb2b63d5ed257b822a1cbbff87956ce/) | ⚠️ Unaudited |
| MixedRouteQuoterV1 | unknown | mantle | n/a | [`0xb32a34a766e1f9ec11b1655227339a8fb899ec13`](./contracts/mantle-5000/0xb32a34a766e1f9ec11b1655227339a8fb899ec13/) | ⚠️ Unaudited |
| MJAirdrop | unknown | mantle | n/a | [`0x532e522964cba02be18f767e4c0e39188894163f`](./contracts/mantle-5000/0x532e522964cba02be18f767e4c0e39188894163f/) | ⚠️ Unaudited |
| Multicall3 | unknown | mantle | n/a | [`0xb55cc6b5b402437b66c13c0ced0ef367aa7c26da`](./contracts/mantle-5000/0xb55cc6b5b402437b66c13c0ced0ef367aa7c26da/) | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | mantle | n/a | [`0x065ad513436f9c748952953a14e3e024bafc713f`](./contracts/mantle-5000/0x065ad513436f9c748952953a14e3e024bafc713f/) | ⚠️ Unaudited |
| OptimismBridgeExecutor | unknown | mantle | n/a | [`0x3a7b055bf88cdc59d20d0245809c6e6b3c5819dd`](./contracts/mantle-5000/0x3a7b055bf88cdc59d20d0245809c6e6b3c5819dd/) | ⚠️ Unaudited |
| PoolHelper | unknown | mantle | n/a | [`0x063411ad7874b7d87f5d032a12bc1766205b60d3`](./contracts/mantle-5000/0x063411ad7874b7d87f5d032a12bc1766205b60d3/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | mantle | n/a | [`0x1dd3af7c92080c7427130956f09b2eaeb858a0f2`](./contracts/mantle-5000/0x1dd3af7c92080c7427130956f09b2eaeb858a0f2/) | ⚠️ Unaudited |
| Quoter | unknown | mantle | n/a | [`0x6fea39c2b9c87c7d2fa153bb0b702aae0fa15930`](./contracts/mantle-5000/0x6fea39c2b9c87c7d2fa153bb0b702aae0fa15930/) | ⚠️ Unaudited |
| QuoterV2 | unknown | mantle | n/a | [`0x90f72244294e7c5028afd6a96e18cc2c1e913995`](./contracts/mantle-5000/0x90f72244294e7c5028afd6a96e18cc2c1e913995/) | ⚠️ Unaudited |
| ReferralHandler | unknown | mantle | n/a | [`0x2233dd8f7e9624f8cbae981c807603b1a3ef02a9`](./contracts/mantle-5000/0x2233dd8f7e9624f8cbae981c807603b1a3ef02a9/) | ⚠️ Unaudited |
| ReferralHandlerV2 | unknown | mantle | n/a | [`0x5456de86007048269e8217484cdcbce47db051dc`](./contracts/mantle-5000/0x5456de86007048269e8217484cdcbce47db051dc/) | ⚠️ Unaudited |
| ReferralRouter | unknown | mantle | n/a | [`0xadf72a253476951bebbc850293503e7aa49b04da`](./contracts/mantle-5000/0xadf72a253476951bebbc850293503e7aa49b04da/) | ⚠️ Unaudited |
| SmartRouter | unknown | mantle | n/a | [`0x0ee679bb70ca4636e41ab49bd57b97a5f9a92674`](./contracts/mantle-5000/0x0ee679bb70ca4636e41ab49bd57b97a5f9a92674/) | ⚠️ Unaudited |
| SmartRouterHelper | unknown | mantle | n/a | [`0x6ca9c16704f4849cf3261203d05a32effc2af6b7`](./contracts/mantle-5000/0x6ca9c16704f4849cf3261203d05a32effc2af6b7/) | ⚠️ Unaudited |
| SwapRouter | unknown | mantle | n/a | [`0x5989fb161568b9f133edf5cf6787f5597762797f`](./contracts/mantle-5000/0x5989fb161568b9f133edf5cf6787f5597762797f/) | ⚠️ Unaudited |
| TickLens | unknown | mantle | n/a | [`0xab84c295ec51e3acd60dc4cb0ef5eea7f927bf3b`](./contracts/mantle-5000/0xab84c295ec51e3acd60dc4cb0ef5eea7f927bf3b/) | ⚠️ Unaudited |
| TokenMintERC20Token | unknown | mantle | n/a | [`0x49397ac9cb061152b770b1d274a5682155f20099`](./contracts/mantle-5000/0x49397ac9cb061152b770b1d274a5682155f20099/) | ⚠️ Unaudited |
| TokenValidator | unknown | mantle | n/a | [`0x256406635628d158b88d678826b588b9f2f76a97`](./contracts/mantle-5000/0x256406635628d158b88d678826b588b9f2f76a97/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | mantle | n/a | [`0x01335163aca394fda985cf578882d544efa2a5ea`](./contracts/mantle-5000/0x01335163aca394fda985cf578882d544efa2a5ea/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | mantle | n/a | [`0x2cbf88f561a12ccfdaf80c459b27bce1b1155467`](./contracts/mantle-5000/0x2cbf88f561a12ccfdaf80c459b27bce1b1155467/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | mantle | n/a | [`0x2fa5e2e2a49de9375047225b7cea4997e8203aa4`](./contracts/mantle-5000/0x2fa5e2e2a49de9375047225b7cea4997e8203aa4/) | ⚠️ Unaudited |
| UniProxy | unknown | mantle | n/a | [`0x891edbed12f2aacc05b32738eefc52a11e662a95`](./contracts/mantle-5000/0x891edbed12f2aacc05b32738eefc52a11e662a95/) | ⚠️ Unaudited |
| USDT | unknown | mantle | n/a | [`0x201eba5cc46d216ce6dc03f6a759e8e766e956ae`](./contracts/mantle-5000/0x201eba5cc46d216ce6dc03f6a759e8e766e956ae/) | ⚠️ Unaudited |
| V3Migrator | unknown | mantle | n/a | [`0x0f9f0f33811db03f5c38e889bf6ed0c3d49053bd`](./contracts/mantle-5000/0x0f9f0f33811db03f5c38e889bf6ed0c3d49053bd/) | ⚠️ Unaudited |
| WBTC | unknown | mantle | n/a | [`0xcabae6f6ea1ecab08ad02fe02ce9a44f09aebfa2`](./contracts/mantle-5000/0xcabae6f6ea1ecab08ad02fe02ce9a44f09aebfa2/) | ⚠️ Unaudited |
| WhitelistableERC20 | unknown | mantle | n/a | [`0xb7fec4ff66b32764758a7df9d6410f6279929a7e`](./contracts/mantle-5000/0xb7fec4ff66b32764758a7df9d6410f6279929a7e/) | ⚠️ Unaudited |
| WMANTLE | unknown | mantle | n/a | [`0x78c1b0c915c4faa5fffa6cabf0219da63d7f4cb8`](./contracts/mantle-5000/0x78c1b0c915c4faa5fffa6cabf0219da63d7f4cb8/) | ⚠️ Unaudited |
| WMNT | unknown | mantle | n/a | [`0x2f75057610d49d037fde28feb8d23debeacadef4`](./contracts/mantle-5000/0x2f75057610d49d037fde28feb8d23debeacadef4/) | ⚠️ Unaudited |

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
| [Hinkal_Zokyo_Feb20th_2024.pdf](https://github.com/zokyo-sec/audit-reports/blob/main/Hinkal/Hinkal_Zokyo_Feb20th_2024.pdf) | unknown | Audit | n/a | unknown | Inherited from Hinkal — forked code, scoped to Hypervisor | inherited | 1 | n/a |
| [index.html](https://certificate.quantstamp.com/full/hinkal-protocol/66b9b783-8b42-4a4e-89ed-3ef2a2df5958/index.html) | Quantstamp | Audit | n/a | unknown | Inherited from Hinkal — forked code, scoped to Hypervisor | inherited | 1 | n/a |
| [www.zksecurity.xyz/reports/hinkal-audit](https://www.zksecurity.xyz/reports/hinkal-audit) | unknown | Audit | n/a | unknown | Inherited from Hinkal — forked code, scoped to Hypervisor | inherited | 1 | n/a |
| [immunefi.com/audit-competition/hinkal-iop/leaderboard](https://immunefi.com/audit-competition/hinkal-iop/leaderboard) | Immunefi | Contest | n/a | unknown | Inherited from Hinkal — forked code, scoped to Hypervisor | inherited | 1 | n/a |
| [drive.google.com/file/d/1DomEnIQ0o4Fv7ELFvnVAIP9vgd6Ez__A/view](https://drive.google.com/file/d/1DomEnIQ0o4Fv7ELFvnVAIP9vgd6Ez__A/view?usp=sharing&utm_source=immunefi) | unknown | Contest | n/a | unknown | Inherited from Hinkal — forked code, scoped to Hypervisor | inherited | 1 | n/a |
| [security-audits.md](https://hinkal-team.gitbook.io/hinkal/technical-description/security-audits.md) | yAudit | Audit | n/a | unknown | Inherited from Hinkal — forked code, scoped to Hypervisor | inherited | 1 | n/a |
| [drive.google.com/file/d/1A0kGmlg04X88-_c4uU0F5WvaMGTDUT3s/view](https://drive.google.com/file/d/1A0kGmlg04X88-_c4uU0F5WvaMGTDUT3s/view?usp=sharing) | Quantstamp | Audit | n/a | unknown | Inherited from Hinkal — forked code, scoped to Hypervisor | inherited | 1 | n/a |
| [drive.google.com/file/d/1SclKWU99HSVgVxfIh7zz4BWuJO46Jd9W/view](https://drive.google.com/file/d/1SclKWU99HSVgVxfIh7zz4BWuJO46Jd9W/view?usp=sharing) | Quantstamp | Audit | n/a | unknown | Inherited from Hinkal — forked code, scoped to Hypervisor | inherited | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| mantle | [`0x0827368c02b509362011120ced5e4c1abde54323`](./contracts/mantle-5000/0x0827368c02b509362011120ced5e4c1abde54323/) | AccessRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x258d485a17e1ba65ff6367d0e8b8acc70ab200f2`](./contracts/mantle-5000/0x258d485a17e1ba65ff6367d0e8b8acc70ab200f2/) | Admin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x8551d2141a755ed8ca3a9e4bd9977dadf300fdb2`](./contracts/mantle-5000/0x8551d2141a755ed8ca3a9e4bd9977dadf300fdb2/) | Airdrop | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x1e86a593e55215957c4755f1be19a229af3286f6`](./contracts/mantle-5000/0x1e86a593e55215957c4755f1be19a229af3286f6/) | Clearing | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x57f32fc5aeec2a1c6539291ae0088b203eb43bbb`](./contracts/mantle-5000/0x57f32fc5aeec2a1c6539291ae0088b203eb43bbb/) | ClearingV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x0180c95ef11eafc12fcaadc9c2c5af08fe9f7efa`](./contracts/mantle-5000/0x0180c95ef11eafc12fcaadc9c2c5af08fe9f7efa/) | CleopatraHypervisor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x3e65ac1dd4938e02301c4869d3043903f5deb474`](./contracts/mantle-5000/0x3e65ac1dd4938e02301c4869d3043903f5deb474/) | CoinToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x44fe4584bb1adb0a8c21479b7b975daa8f2952d9`](./contracts/mantle-5000/0x44fe4584bb1adb0a8c21479b7b975daa8f2952d9/) | ElkDexInterfaceMulticall | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x6efff76acf1698a6a215eca7d632991678ec673b`](./contracts/mantle-5000/0x6efff76acf1698a6a215eca7d632991678ec673b/) | FLOKI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0xe371352b9d8971b0ae464a05aaea623a012ad7e2`](./contracts/mantle-5000/0xe371352b9d8971b0ae464a05aaea623a012ad7e2/) | FusionXFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x35e1e34ee20ee5c63edd1ecc33fc3bbc93357a14`](./contracts/mantle-5000/0x35e1e34ee20ee5c63edd1ecc33fc3bbc93357a14/) | FusionXRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x0c69e6b21cd183e2a268649178a66d53d738e760`](./contracts/mantle-5000/0x0c69e6b21cd183e2a268649178a66d53d738e760/) | FusionXV3Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x5d06ce554fe4ce7a70c2daa992a4b167d86e4de2`](./contracts/mantle-5000/0x5d06ce554fe4ce7a70c2daa992a4b167d86e4de2/) | FusionXV3PoolDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x39f5fb9076fa9a78625d3ebc401a7906711f847c`](./contracts/mantle-5000/0x39f5fb9076fa9a78625d3ebc401a7906711f847c/) | Gauge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x683292172e2175bd08e3927a5e72fc301b161300`](./contracts/mantle-5000/0x683292172e2175bd08e3927a5e72fc301b161300/) | HypeRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x634aec95db17bbede58c9cb2bbd9fe6c4806c617`](./contracts/mantle-5000/0x634aec95db17bbede58c9cb2bbd9fe6c4806c617/) | Launchpad | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x091adb85d5dbef76b91fa0be416d53aa9232c521`](./contracts/mantle-5000/0x091adb85d5dbef76b91fa0be416d53aa9232c521/) | LaunchpadToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x691cf60166e1cdbfbd8ce6b458985c1d4eae4574`](./contracts/mantle-5000/0x691cf60166e1cdbfbd8ce6b458985c1d4eae4574/) | LBPMasterChefV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x2a6992f8c659ceb4294d185ce10ed1b5bde7fd9c`](./contracts/mantle-5000/0x2a6992f8c659ceb4294d185ce10ed1b5bde7fd9c/) | LpHolder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0xf93a85d53e4af0d62bdf3a83ccfc1ecf3eaf9f32`](./contracts/mantle-5000/0xf93a85d53e4af0d62bdf3a83ccfc1ecf3eaf9f32/) | LUSDStablecoin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0xeb0c390b1fb2b63d5ed257b822a1cbbff87956ce`](./contracts/mantle-5000/0xeb0c390b1fb2b63d5ed257b822a1cbbff87956ce/) | METHL2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0xb32a34a766e1f9ec11b1655227339a8fb899ec13`](./contracts/mantle-5000/0xb32a34a766e1f9ec11b1655227339a8fb899ec13/) | MixedRouteQuoterV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x532e522964cba02be18f767e4c0e39188894163f`](./contracts/mantle-5000/0x532e522964cba02be18f767e4c0e39188894163f/) | MJAirdrop | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x065ad513436f9c748952953a14e3e024bafc713f`](./contracts/mantle-5000/0x065ad513436f9c748952953a14e3e024bafc713f/) | NonfungiblePositionManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x3a7b055bf88cdc59d20d0245809c6e6b3c5819dd`](./contracts/mantle-5000/0x3a7b055bf88cdc59d20d0245809c6e6b3c5819dd/) | OptimismBridgeExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x063411ad7874b7d87f5d032a12bc1766205b60d3`](./contracts/mantle-5000/0x063411ad7874b7d87f5d032a12bc1766205b60d3/) | PoolHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x6fea39c2b9c87c7d2fa153bb0b702aae0fa15930`](./contracts/mantle-5000/0x6fea39c2b9c87c7d2fa153bb0b702aae0fa15930/) | Quoter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x90f72244294e7c5028afd6a96e18cc2c1e913995`](./contracts/mantle-5000/0x90f72244294e7c5028afd6a96e18cc2c1e913995/) | QuoterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x2233dd8f7e9624f8cbae981c807603b1a3ef02a9`](./contracts/mantle-5000/0x2233dd8f7e9624f8cbae981c807603b1a3ef02a9/) | ReferralHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x5456de86007048269e8217484cdcbce47db051dc`](./contracts/mantle-5000/0x5456de86007048269e8217484cdcbce47db051dc/) | ReferralHandlerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0xadf72a253476951bebbc850293503e7aa49b04da`](./contracts/mantle-5000/0xadf72a253476951bebbc850293503e7aa49b04da/) | ReferralRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x0ee679bb70ca4636e41ab49bd57b97a5f9a92674`](./contracts/mantle-5000/0x0ee679bb70ca4636e41ab49bd57b97a5f9a92674/) | SmartRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x6ca9c16704f4849cf3261203d05a32effc2af6b7`](./contracts/mantle-5000/0x6ca9c16704f4849cf3261203d05a32effc2af6b7/) | SmartRouterHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x5989fb161568b9f133edf5cf6787f5597762797f`](./contracts/mantle-5000/0x5989fb161568b9f133edf5cf6787f5597762797f/) | SwapRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0xab84c295ec51e3acd60dc4cb0ef5eea7f927bf3b`](./contracts/mantle-5000/0xab84c295ec51e3acd60dc4cb0ef5eea7f927bf3b/) | TickLens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x256406635628d158b88d678826b588b9f2f76a97`](./contracts/mantle-5000/0x256406635628d158b88d678826b588b9f2f76a97/) | TokenValidator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x891edbed12f2aacc05b32738eefc52a11e662a95`](./contracts/mantle-5000/0x891edbed12f2aacc05b32738eefc52a11e662a95/) | UniProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x201eba5cc46d216ce6dc03f6a759e8e766e956ae`](./contracts/mantle-5000/0x201eba5cc46d216ce6dc03f6a759e8e766e956ae/) | USDT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x0f9f0f33811db03f5c38e889bf6ed0c3d49053bd`](./contracts/mantle-5000/0x0f9f0f33811db03f5c38e889bf6ed0c3d49053bd/) | V3Migrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0xcabae6f6ea1ecab08ad02fe02ce9a44f09aebfa2`](./contracts/mantle-5000/0xcabae6f6ea1ecab08ad02fe02ce9a44f09aebfa2/) | WBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0xb7fec4ff66b32764758a7df9d6410f6279929a7e`](./contracts/mantle-5000/0xb7fec4ff66b32764758a7df9d6410f6279929a7e/) | WhitelistableERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x78c1b0c915c4faa5fffa6cabf0219da63d7f4cb8`](./contracts/mantle-5000/0x78c1b0c915c4faa5fffa6cabf0219da63d7f4cb8/) | WMANTLE | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x2f75057610d49d037fde28feb8d23debeacadef4`](./contracts/mantle-5000/0x2f75057610d49d037fde28feb8d23debeacadef4/) | WMNT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 44 |
| upstream | 1 |
| standard_library | 5 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: inherited_name_remap=8

Fork inheritance lineage and inherited audits are included when available.
