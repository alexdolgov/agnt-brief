# Agentic Audit Brief: EmiSwap

## Project Overview

- Project: EmiSwap (`emiswap`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:11.772Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-1cbb
- Chains: aurora, ethereum, polygon
- Contract surface: 32 unique implementations (33 raw deployments)
- DeFi Llama TVL: $33,547.84
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 12 project-authored contract(s) across 2 chain(s); upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 5 common project-authored base contract(s) (upgradeableproxy, proxy, lptokenwrapper). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 50; live-surface contracts included: 33 (2 live, 31 unknown).
- Excluded by liveness: 17 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/2 (0.0%)
- Deployed-live implementations: 2 of 32 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/5
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 27
- Unique implementations: 32
- Raw deployments: 33
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

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| EmiList | unknown | ethereum | n/a | [`0x99e401f9f825822f005d68b7d903038cc601c73b`](./contracts/ethereum-1/0x99e401f9f825822f005d68b7d903038cc601c73b/) | ⚠️ Unaudited |
| EmiRouter | adapter | ethereum | n/a | 2 deployments: ethereum [`0x22b8ccdeeeacb1f3879e36e06af413d44fd79f01`](./contracts/ethereum-1/0x22b8ccdeeeacb1f3879e36e06af413d44fd79f01/); polygon `0x38680777a6a402e98fa4609725664f6766c2c46a` | ⚠️ Unaudited |
| EmiVamp | unknown | ethereum | n/a | [`0xe629c4dc9538614019d17d09f54617ef89e1a3af`](./contracts/ethereum-1/0xe629c4dc9538614019d17d09f54617ef89e1a3af/) | ⚠️ Unaudited |
| ESW | unknown | ethereum | n/a | [`0x5a75a093747b72a0e14056352751edf03518031d`](./contracts/ethereum-1/0x5a75a093747b72a0e14056352751edf03518031d/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x8b50a72b86bc55a49ef034ef961d2d4e69b2681e`](./contracts/ethereum-1/0x8b50a72b86bc55a49ef034ef961d2d4e69b2681e/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (27)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x2694f5335ce99168e68f215db6028d44fb0aff62` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3d2934b9dcd1295f0caecbeecb6bc5ba7dc1c865` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x40651edb84bcf4c3280e2132ae4e8f19e58860c2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4120b8eb7da1bf2940b7ec01619f5f1d48e733d8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x412c9509b6b8a3ae87f5d13e823360b42a55e02b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x42148bfde5a970b837ec47ba1012433dd997436e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4856bb26be99ed26e1d96d4e324d351da23a6a69` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4b77a79996d712e2afcda758352ee19934db9316` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4bcb48c24797573aab6f25e4e0eadf8168c1de9c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4e7ec6792bd5312fa85cb7357340204fd52a99e7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x52893082158ee997bb46748bd2ccb2bbb5a23e71` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x538fab26e5a2b21ab25596430d4659bdba3086b1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x57271b89d4d4ff19051b3029ed27b26e4fb3eec0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6941d1a112771fcd5e6fe7f7ebd674d495ddbf27` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xba2398194721b292ff628faa782cf22e924d365d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc2e079df1ddd87fc4886cce1db343675d1fdb234` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcab605ce6240172e5e9c21ce96a2ff33afe90ce4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcfd8b0d58eb3b3cab1bb340925b415b7fea13960` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd1a838d1a35b71e979b777cc4958bddf150eb69c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd2a2a353d28e4833faffc882f6649c9c884a7d8f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd45ccd9e98f8a75f68521de0f9222d8c5f606f8f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdd134d801a018d4068345e2f52fad06813fc8379` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe06ec5e1c916271ab5a6d0aeaeff83e572903f24` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe5f877477c7e8fff8e7c3162ec07f53c458fe472` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf3ffa7934a389a101cfb5ee239daae9d97d53b08` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0x5a75a093747b72a0e14056352751edf03518031d` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0xe094e3e16e813a40e2d6cc4b89bfeae0142044e1` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [habanero188resmi.com](https://habanero188resmi.com/) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x99e401f9f825822f005d68b7d903038cc601c73b`](./contracts/ethereum-1/0x99e401f9f825822f005d68b7d903038cc601c73b/) | EmiList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x22b8ccdeeeacb1f3879e36e06af413d44fd79f01`](./contracts/ethereum-1/0x22b8ccdeeeacb1f3879e36e06af413d44fd79f01/) | EmiRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe629c4dc9538614019d17d09f54617ef89e1a3af`](./contracts/ethereum-1/0xe629c4dc9538614019d17d09f54617ef89e1a3af/) | EmiVamp | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5a75a093747b72a0e14056352751edf03518031d`](./contracts/ethereum-1/0x5a75a093747b72a0e14056352751edf03518031d/) | ESW | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 27 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13078] habanero188resmi.com

Fork inheritance lineage and inherited audits are included when available.
