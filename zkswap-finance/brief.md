# Agentic Audit Brief: zkSwap Finance

## Project Overview

- Project: zkSwap Finance (`zkswap-finance`)
- Website: [https://zkswap.finance](https://zkswap.finance)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:14.965Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: sonic, zksync-era
- Contract surface: 55 unique implementations (76 raw deployments)
- DeFi Llama TVL: $843,085.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 30 project-authored contract(s) across 2 chain(s); 4 ERC20 tokens, 1 ERC721 NFT; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 9 common project-authored base contract(s) (peripheryimmutablestate, oft, oftcore). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 100; live-surface contracts included: 76 (31 live, 45 unknown).
- Excluded by liveness: 24 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/10 (20.0%)
- Deployed-live implementations: 11 of 55 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/11
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 44
- Unique implementations: 55
- Raw deployments: 76
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 8 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 2 | 18.2% | 2024-01 |
| Bailsec | Tier 2 | 1 | 9.1% | 2024-04 |
| CertiK | Tier 2 | 1 | 9.1% | 2023-12 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ZFGovernanceStaking | unknown | sonic | n/a | 5 deployments: sonic [`0x0cc7d6da666529841bad1f9d4199f9773aa171d5`](./contracts/sonic-146/0x0cc7d6da666529841bad1f9d4199f9773aa171d5/); sonic `0x4761516344e8e101c6c5f9448974ca847b1a9d3f`; sonic `0x54de113ad67718ba86ca8466b200fbf9200e106d`; sonic `0xb255ec73db8ce5511df5d7ab76c4a84cf7e1e876`; sonic `0xcb3d626005e3e209fe7fbf661a9cbe4874c35087` | ✅ Audited |
| ZFRouter | adapter | zksync-era | n/a | 2 deployments: sonic `0xcd219ae923b5f20cb36ad316a129d8f9015d1822`; zksync-era [`0x18381c0f738146fb694de18d1106bde2be040fa4`](./contracts/zksync-era-324/0x18381c0f738146fb694de18d1106bde2be040fa4/) | ✅ Audited |

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AggregatorSmart | unknown | sonic | n/a | 4 deployments: sonic [`0x0edd6eced51b0f0ee830d891ba230ac39ff6f5b3`](./contracts/sonic-146/0x0edd6eced51b0f0ee830d891ba230ac39ff6f5b3/); sonic `0x55dfa51618abab2fb0032bb48c4f995cd7679d2a`; sonic `0xbd1c107f501734218bcdb18762756978a859ca60`; sonic `0xc9c49728a43bbf0f804ef56becd081137fc85849` | ⚠️ Unaudited |
| AggregatorSmartV2 | unknown | sonic | n/a | [`0x7f2038b9a6d80b34dc5ec66208bccfd9332aac65`](./contracts/sonic-146/0x7f2038b9a6d80b34dc5ec66208bccfd9332aac65/) | ⚠️ Unaudited |
| BulkSender | unknown | sonic | n/a | [`0xaf02a22ea072d8a7fc573935aea7152345d5533e`](./contracts/sonic-146/0xaf02a22ea072d8a7fc573935aea7152345d5533e/) | ⚠️ Unaudited |
| GnosisSafeProxy | governance | sonic | n/a | 2 deployments: sonic [`0x4780ea7fc1fc4c51732ab31d797d4e24757c2262`](./contracts/sonic-146/0x4780ea7fc1fc4c51732ab31d797d4e24757c2262/); sonic `0x825e625af71404a40f5c1ef9a03095574dff1e13` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | sonic | n/a | 2 deployments: sonic [`0x2e11640ee1368f2cd90c36607760a274a30094f5`](./contracts/sonic-146/0x2e11640ee1368f2cd90c36607760a274a30094f5/); zksync-era `0xe8a9c651c29469f0de2ce0506002828a7e683860` | ⚠️ Unaudited |
| UniversalRouter | adapter | sonic | n/a | [`0x957dbef5673822b3db074f6cee6dcd0fa68f18ec`](./contracts/sonic-146/0x957dbef5673822b3db074f6cee6dcd0fa68f18ec/) | ⚠️ Unaudited |
| ZFOFT | unknown | sonic | n/a | 2 deployments: sonic [`0xb6269059eef1b6b7d478752ed037bd0dd8197cbf`](./contracts/sonic-146/0xb6269059eef1b6b7d478752ed037bd0dd8197cbf/); sonic `0xd25b7aeef85483a6bd04d9a6a6dfb89effac3891` | ⚠️ Unaudited |
| ZFRewardDistributor | operational_periphery | sonic | n/a | 6 deployments: sonic [`0x66349deb1eb7d855894bfde287ac68d0eb2344fe`](./contracts/sonic-146/0x66349deb1eb7d855894bfde287ac68d0eb2344fe/); sonic `0x78caac771dbf608553b8eb8d63c71821cbdbc5d5`; sonic `0x807fa075158c49b2bed4e180aaa42e13fe3e795f`; sonic `0xb2d779585143b1daa6b0abd386909fac1bb74de5`; sonic `0xda85e083f4d8156ecdbc1c295892357022d23e8d`; sonic `0xfcc8d30c138f3859eba263696d8726c0725d3164` | ⚠️ Unaudited |
| ZFSwap2EarnRewarder | unknown | sonic | n/a | 6 deployments: sonic [`0x3e5239b8b19f2610769a7bcb5e9c876bf90cb362`](./contracts/sonic-146/0x3e5239b8b19f2610769a7bcb5e9c876bf90cb362/); sonic `0x43589b9ff1a9a93e5d571409b77e46c549b15843`; sonic `0x4784a5443c440f7431b3079d97becb0bdc3a96b7`; sonic `0x750591d7919fcb0fdee30f139799a63f8693155b`; sonic `0xc98628cc4cc8bf606e247bacb8cfcf33151e453c`; sonic `0xf5df07accb7f319016e81d10a0acf3882af47113` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (44)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | sonic | n/a | `0x1ad6bced212aef5935ade659c24f09300c35168a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x1e9ebcb695c0cae7e16f36f4d7f15f6935fc6e88` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x273fff79df4ef632ac5837f52af03b7f1aeb88cc` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x3ec4879991d51338d2a2d037f4dad439570cf971` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x45728a3d03ff67cc0c8546f4290affb7c94f877a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x5ebdc33a0da4e30bfb96a98be20a23be30a45644` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x8328ea1851057a291dc3281dfb6780d650ef1434` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xced35925a87990e3b06a63ff4dae82e159ceda27` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xead5492f35c0d89668b89bb85b5ca3ea45c83bb2` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x010012918cb9618ae4ba2abc0113216d1639e069` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x056f1960b5cf53676ad9c0a7113363a812dc0c8e` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x0d64c4eb0547c1f51b78fb1a53583dc9042238c0` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x12c944515f766baa62fd334efda6bdbd799adf4f` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x13bd7a61b46950ff0e9b41571dc4c503ee854042` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x1420963c2367eb21ff06511910946794d898c08c` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x15309aaf4fedf346e5204331027b4ef7b75b1dd7` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x31c330f2febda65693ec8801b77a93c6d1f479e4` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x386befa6a54f9685ae85871aa47056891d63c54c` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x4700347e98c9c8a0c63a865575dff34088c473d5` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x4780ea7fc1fc4c51732ab31d797d4e24757c2262` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x484a72b4879ac8b04652b51bf1d1c110077990a4` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x4ca2ac3513739cebf053b66a1d59c88d925f1987` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x525990769c271b1a0ab0b5158d7062be54e4983d` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x571407034da9373d24ffbd2e41d9bf2879c5ddab` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x58d8dd00b25f6557698d37784029f736c63f3c11` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x5ae21af1d601e559700f15f19f464ade021f6eb7` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x61278adbbe823dd30675248e78f34e90c648ea9b` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x63d8e785df53a18d1282c9400c6c5cd57c8f19fc` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x6f4fc76b34901275903a0e7eb27b32bec5e4c215` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x7ab61748af61e0588296b6edf5c80ef5d0b6bbc7` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x825e625af71404a40f5c1ef9a03095574dff1e13` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x9f20a1ce3b66ebef612cbfa854c8f2dbf664ea28` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x9f9d043fb77a194b4216784eb5985c471b979d67` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xa478bf3f621d47e6753f463711630c282d2803ab` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xa9e411d26df48d6871e966da84af878425a8e100` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xb392e1c972b23e8ee5890a89e23d5f9bf4097f50` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xb71dca272468180bc38f3c034283a9bba7f961e6` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xb76f089a491f3e2d09ace7537bc422a11af66b0b` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xc008dc6e8ff71217f75cdc95cc1ab9c7959c0269` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xcd6121185a98370be32d71f60a910de0d733946f` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xdbe9b7a13d744a880f417ee378fcff3d3fe5ba52` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xf1802d9a70bdc6f6effd65d44b33226ee0e6a821` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xf560df1cafb0da08ecb1f9e244c68640b701e53e` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xfe6b0136fb9b5993dc840371cc8bee83a46a41b5` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [skynet.certik.com/projects/zkswap-finance](https://skynet.certik.com/projects/zkswap-finance) | CertiK | Audit | 2023-12 | stale | Direct | contract_name | 1 | n/a |
| [ZKSWAP FINANCE AUDIT REPORT.pdf](https://github.com/Vital-block/Smart-Contract-Audit/blob/main/ZKSWAP%20FINANCE%20AUDIT%20REPORT.pdf) | unknown | Audit | 2023-06 | stale | Direct | contract_name | 1 | n/a |
| [0_[Certik]_zkSwap_Finance_Audit_Report.pdf](https://github.com/ZkSwapFinance/Audit-Reports/blob/main/0_%5BCertik%5D_zkSwap_Finance_Audit_Report.pdf) | CertiK | Audit | 2023-12 | stale | Direct | contract_name | 1 | n/a |
| [Bailsec - zkSwap Final Report Github (+Resolution).pdf](https://github.com/bailsec/BailSec/blob/main/Bailsec%20-%20zkSwap%20Final%20Report%20Github%20(%2BResolution).pdf) | Bailsec | Audit | 2024-04 | stale | Direct | contract_name | 1 | n/a |
| [SmartContract_Audit_Solidproof_ZkSwapFinance.pdf](https://github.com/solidproof/projects/blob/main/2024/Zkswap%20Finance/SmartContract_Audit_Solidproof_ZkSwapFinance.pdf) | Solidproof | Audit | 2024-03 | stale | Direct | n/a | 0 | n/a |
| [Farm.pdf](https://github.com/cyberscope-io/audits/blob/main/zkswap-finance/Farm.pdf) | unknown | Audit | 2024-01 | stale | Direct | n/a | 0 | n/a |
| [GovernanceStaking.pdf](https://github.com/cyberscope-io/audits/blob/main/zkswap-finance/GovernanceStaking.pdf) | unknown | Audit | 2024-01 | stale | Direct | contract_name | 1 | n/a |
| [audit.pdf](https://github.com/cyberscope-io/audits/blob/main/zkswap-finance/audit.pdf) | unknown | Audit | 2024-01 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| sonic | [`0x0edd6eced51b0f0ee830d891ba230ac39ff6f5b3`](./contracts/sonic-146/0x0edd6eced51b0f0ee830d891ba230ac39ff6f5b3/) | AggregatorSmart | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x7f2038b9a6d80b34dc5ec66208bccfd9332aac65`](./contracts/sonic-146/0x7f2038b9a6d80b34dc5ec66208bccfd9332aac65/) | AggregatorSmartV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xaf02a22ea072d8a7fc573935aea7152345d5533e`](./contracts/sonic-146/0xaf02a22ea072d8a7fc573935aea7152345d5533e/) | BulkSender | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x2e11640ee1368f2cd90c36607760a274a30094f5`](./contracts/sonic-146/0x2e11640ee1368f2cd90c36607760a274a30094f5/) | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x957dbef5673822b3db074f6cee6dcd0fa68f18ec`](./contracts/sonic-146/0x957dbef5673822b3db074f6cee6dcd0fa68f18ec/) | UniversalRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xb6269059eef1b6b7d478752ed037bd0dd8197cbf`](./contracts/sonic-146/0xb6269059eef1b6b7d478752ed037bd0dd8197cbf/) | ZFOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x66349deb1eb7d855894bfde287ac68d0eb2344fe`](./contracts/sonic-146/0x66349deb1eb7d855894bfde287ac68d0eb2344fe/) | ZFRewardDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x3e5239b8b19f2610769a7bcb5e9c876bf90cb362`](./contracts/sonic-146/0x3e5239b8b19f2610769a7bcb5e9c876bf90cb362/) | ZFSwap2EarnRewarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 10 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 44 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=5

Zero-match audit list:

- [3159] SmartContract_Audit_Solidproof_ZkSwapFinance.pdf
- [14821] Farm.pdf
- [14823] audit.pdf

Fork inheritance lineage and inherited audits are included when available.
