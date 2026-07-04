# Agentic Audit Brief: DELV

## Project Overview

- Project: DELV (`delv`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:42.742Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: ethereum, gnosis
- Contract surface: 38 unique implementations (38 raw deployments)
- DeFi Llama TVL: $749,242.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 38 project-authored contract(s) across 2 chain(s); 1 ERC4626 vault, 2 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 7 common project-authored base contract(s) (hyperdriveadmin, hyperdrivebase, hyperdrivemultitoken). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 38; live-surface contracts included: 38 (38 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/38 (0.0%)
- Deployed-live implementations: 38 of 38 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/38
- Verified + Unaudited implementations: 38
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 38
- Raw deployments: 38
- Audits discovered: 10 (10 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 6 stale, 4 unknown
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
| EETHHyperdriveCoreDeployer | unknown | ethereum | n/a | [`0xe7a945...10c2e0`](./contracts/ethereum-1/0xe7a94527ff10858228d8c96d13f235ff0710c2e0/) | ⚠️ Unaudited |
| EETHHyperdriveDeployerCoordinator | unknown | ethereum | n/a | [`0x91ca2f...4a11fb`](./contracts/ethereum-1/0x91ca2fc7c6c241aa66e4cbc750895c92f94a11fb/) | ⚠️ Unaudited |
| EETHTarget0Deployer | unknown | ethereum | n/a | [`0x81a4b3...2c1047`](./contracts/ethereum-1/0x81a4b3439430971bb23473d036dab1efd72c1047/) | ⚠️ Unaudited |
| EETHTarget1Deployer | unknown | ethereum | n/a | [`0x69fb6a...5dd37f`](./contracts/ethereum-1/0x69fb6a96b69c7bf4ffbdc056dc7b71fa835dd37f/) | ⚠️ Unaudited |
| EETHTarget2Deployer | unknown | ethereum | n/a | [`0x7e3ea1...3370b1`](./contracts/ethereum-1/0x7e3ea168287ac8e4c6fb8fe66dc171560b3370b1/) | ⚠️ Unaudited |
| EETHTarget3Deployer | unknown | ethereum | n/a | [`0xb7a4ea...7650cf`](./contracts/ethereum-1/0xb7a4eab5fa48cd17d4f2c8180a1cdc5fc97650cf/) | ⚠️ Unaudited |
| EETHTarget4Deployer | unknown | ethereum | n/a | [`0x014cf9...7fe1f7`](./contracts/ethereum-1/0x014cf9e55a9ddf075b4780d3addae7873e7fe1f7/) | ⚠️ Unaudited |
| ERC20ForwarderFactory | unknown | ethereum | n/a | [`0x08b406...a199d2`](./contracts/ethereum-1/0x08b40647714ac1e5742633fc2d83c20d61a199d2/) | ⚠️ Unaudited |
| ERC4626HyperdriveCoreDeployer | unknown | ethereum | n/a | [`0x1dcac7...c81289`](./contracts/ethereum-1/0x1dcac79c73ca892d5872e5d8cb3ff43db0c81289/) | ⚠️ Unaudited |
| ERC4626HyperdriveDeployerCoordinator | unknown | ethereum | n/a | [`0x0ebbb7...a633c9`](./contracts/ethereum-1/0x0ebbb7e85337cf4ed496dd81a300c6c31ba633c9/) | ⚠️ Unaudited |
| ERC4626Target0Deployer | unknown | ethereum | n/a | [`0x2bbf07...b7e701`](./contracts/ethereum-1/0x2bbf0716fb1ac91169b0dbecff232c7bf1b7e701/) | ⚠️ Unaudited |
| ERC4626Target1Deployer | unknown | ethereum | n/a | [`0x068d52...382426`](./contracts/ethereum-1/0x068d5258f54b462de4240547dca0f1fce6382426/) | ⚠️ Unaudited |
| ERC4626Target2Deployer | unknown | ethereum | n/a | [`0x0fb305...ea03fd`](./contracts/ethereum-1/0x0fb305a458b1008faee03147b700b3975bea03fd/) | ⚠️ Unaudited |
| ERC4626Target3Deployer | unknown | ethereum | n/a | [`0x01f06f...e624b1`](./contracts/ethereum-1/0x01f06f23d684d2beacb4dc9dcb4bd27a3fe624b1/) | ⚠️ Unaudited |
| ERC4626Target4Deployer | unknown | ethereum | n/a | [`0x0fb70c...238ccb`](./contracts/ethereum-1/0x0fb70c3de906eddab929b5d288b638adb5238ccb/) | ⚠️ Unaudited |
| EzETHHyperdriveCoreDeployer | unknown | ethereum | n/a | [`0x82629d...98a1f3`](./contracts/ethereum-1/0x82629da7b2c14933982e5de9ff97f505ff98a1f3/) | ⚠️ Unaudited |
| EzETHHyperdriveDeployerCoordinator | unknown | ethereum | n/a | [`0x95b379...85349b`](./contracts/ethereum-1/0x95b379ad131412e702cc6c9a52bcaaf07785349b/) | ⚠️ Unaudited |
| EzETHTarget0Deployer | unknown | ethereum | n/a | [`0x68ba94...b5562b`](./contracts/ethereum-1/0x68ba944d89d7481f3a9d73dcb75b7e6c7db5562b/) | ⚠️ Unaudited |
| EzETHTarget1Deployer | unknown | ethereum | n/a | [`0xb7c320...816d76`](./contracts/ethereum-1/0xb7c320cef81f0f9abb726590ef5105f551816d76/) | ⚠️ Unaudited |
| EzETHTarget2Deployer | unknown | ethereum | n/a | [`0x8d6d5d...71b87b`](./contracts/ethereum-1/0x8d6d5d48f881bcccd6c09256724692b3a971b87b/) | ⚠️ Unaudited |
| EzETHTarget3Deployer | unknown | ethereum | n/a | [`0xc0dc10...4f0fb3`](./contracts/ethereum-1/0xc0dc10957777ba5aaeec5d1df351a5bea64f0fb3/) | ⚠️ Unaudited |
| EzETHTarget4Deployer | unknown | ethereum | n/a | [`0x6940c1...0ff3ac`](./contracts/ethereum-1/0x6940c108b1bee27600e8bb46d9710b46f60ff3ac/) | ⚠️ Unaudited |
| HyperdriveFactory | unknown | ethereum | n/a | [`0xf95b98...2dc488`](./contracts/ethereum-1/0xf95b98256edb861be389b9807f6656e8be2dc488/) | ⚠️ Unaudited |
| HyperdriveRegistry | unknown | gnosis | n/a | [`0x666fa9...c59666`](./contracts/gnosis-100/0x666fa9ef9bca174a042c4c306b23ba8ee0c59666/) | ⚠️ Unaudited |
| HyperdriveRoycoHelper | unknown | ethereum | n/a | [`0xb0b60c...615440`](./contracts/ethereum-1/0xb0b60cafe428bca732f016ed853a77d621615440/) | ⚠️ Unaudited |
| RETHHyperdriveCoreDeployer | unknown | ethereum | n/a | [`0x3df847...ef931d`](./contracts/ethereum-1/0x3df8476a3fdf2636dcf47b1e066f7691f9ef931d/) | ⚠️ Unaudited |
| RETHHyperdriveDeployerCoordinator | unknown | ethereum | n/a | [`0x6027d5...87ff2e`](./contracts/ethereum-1/0x6027d51985cf01f5df8fb2bb56ea0e69a487ff2e/) | ⚠️ Unaudited |
| RETHTarget0Deployer | unknown | ethereum | n/a | [`0x02d668...f1e9ee`](./contracts/ethereum-1/0x02d668b32fc23f223464f3daf9df6e518cf1e9ee/) | ⚠️ Unaudited |
| RETHTarget1Deployer | unknown | ethereum | n/a | [`0x5718e9...4824ef`](./contracts/ethereum-1/0x5718e9228e4582076fc514ba329203518e4824ef/) | ⚠️ Unaudited |
| RETHTarget2Deployer | unknown | ethereum | n/a | [`0x3f2f4c...c39719`](./contracts/ethereum-1/0x3f2f4c0360ae5cf7a0e655dd1a002a142ac39719/) | ⚠️ Unaudited |
| RETHTarget3Deployer | unknown | ethereum | n/a | [`0xd25987...278bee`](./contracts/ethereum-1/0xd259875f89ca9db95974d06a6cd6d92195278bee/) | ⚠️ Unaudited |
| RETHTarget4Deployer | unknown | ethereum | n/a | [`0x9a2f15...8c1fbd`](./contracts/ethereum-1/0x9a2f15a6941d13719abae15c03dde580098c1fbd/) | ⚠️ Unaudited |
| StETHHyperdriveCoreDeployer | unknown | ethereum | n/a | [`0xe8dc50...823540`](./contracts/ethereum-1/0xe8dc5073b02d062388db8e50762a8c9a1c823540/) | ⚠️ Unaudited |
| StETHHyperdriveDeployerCoordinator | unknown | ethereum | n/a | [`0x23dd1c...465239`](./contracts/ethereum-1/0x23dd1c32c7f14deca77d4b0f1b818fa181465239/) | ⚠️ Unaudited |
| StETHTarget0Deployer | unknown | ethereum | n/a | [`0xe0da47...d91327`](./contracts/ethereum-1/0xe0da47a1a6ceb80bb945652cb96a821fa5d91327/) | ⚠️ Unaudited |
| StETHTarget1Deployer | unknown | ethereum | n/a | [`0x279c05...3d7c08`](./contracts/ethereum-1/0x279c0504575639131be082923c21289d553d7c08/) | ⚠️ Unaudited |
| StETHTarget2Deployer | unknown | ethereum | n/a | [`0xca76fd...d784b5`](./contracts/ethereum-1/0xca76fd3033fa9f754c05844773d79c193ad784b5/) | ⚠️ Unaudited |
| StETHTarget3Deployer | unknown | ethereum | n/a | [`0xb274f4...18f6ea`](./contracts/ethereum-1/0xb274f4fcc2b391e0dfabfbe7b7c130447018f6ea/) | ⚠️ Unaudited |

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
| [certora-08-2023.pdf](https://github.com/delvtech/hyperdrive/blob/main/audits/certora-08-2023.pdf) | Certora | Audit | 2023 | stale | Direct | n/a | 0 | n/a |
| [chainsafe-06-2023.pdf](https://github.com/delvtech/hyperdrive/blob/main/audits/chainsafe-06-2023.pdf) | ChainSafe | Audit | 2023 | stale | Direct | n/a | 0 | n/a |
| [spearbit-02-2024.pdf](https://github.com/delvtech/hyperdrive/blob/main/audits/spearbit-02-2024.pdf) | Spearbit | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [spearbit-03-2024.pdf](https://github.com/delvtech/hyperdrive/blob/main/audits/spearbit-03-2024.pdf) | Spearbit | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [spearbit-06-2023.pdf](https://github.com/delvtech/hyperdrive/blob/main/audits/spearbit-06-2023.pdf) | Spearbit | Audit | 2023 | stale | Direct | n/a | 0 | n/a |
| [spearbit-06-2024.pdf](https://github.com/delvtech/hyperdrive/blob/main/audits/spearbit-06-2024.pdf) | Spearbit | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [Runtime_Verification_Security_Audit_Report.pdf](https://github.com/delvtech/elf-contracts/blob/main/audits/Runtime_Verification_Security_Audit_Report.pdf) | Runtime Verification | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [PeckShield-Audit-Report.pdf](https://github.com/delvtech/elf-contracts/blob/main/audits/PeckShield-Audit-Report.pdf) | PeckShield | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Element_ChainSafe_Council_Audit_October_2021.pdf](https://github.com/delvtech/council/blob/main/audits/Element_ChainSafe_Council_Audit_October_2021.pdf) | ChainSafe | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Element_Finance_RuntimeVerification_Governance_Security_Audit_Report.pdf](https://github.com/delvtech/council/blob/main/audits/Element_Finance_RuntimeVerification_Governance_Security_Audit_Report.pdf) | Runtime Verification | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

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
- Audits with zero matched contracts: 10
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [19693] certora-08-2023.pdf
- [19694] chainsafe-06-2023.pdf
- [19695] spearbit-02-2024.pdf
- [19696] spearbit-03-2024.pdf
- [19697] spearbit-06-2023.pdf
- [19698] spearbit-06-2024.pdf
- [19699] Runtime_Verification_Security_Audit_Report.pdf
- [19700] PeckShield-Audit-Report.pdf
- [19701] Element_ChainSafe_Council_Audit_October_2021.pdf
- [19702] Element_Finance_RuntimeVerification_Governance_Security_Audit_Report.pdf

Fork inheritance lineage and inherited audits are included when available.
